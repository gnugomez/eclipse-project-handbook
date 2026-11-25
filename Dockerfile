# syntax=docker/dockerfile:1
# The site in one image: the Nuxt server (prerendered pages, Nuxt Studio, the
# assistant, /mcp) on port 3000, for Coolify or any Docker host:
#   docker build -t eclipse-project-handbook .
#   docker run -p 3000:3000 --env-file .env eclipse-project-handbook
# The run-time environment is in .env.example and the README ("Deployment").

ARG NODE_VERSION=24

# Dependencies. Yarn 4 clones solstice-nuxt from git and builds it (git and the
# build tools of the full image). Their postinstall, `nuxt prepare`, reads the
# config, not the pages: editing a page keeps this layer.
FROM node:${NODE_VERSION}-bookworm AS deps
ENV COREPACK_ENABLE_DOWNLOAD_PROMPT=0
WORKDIR /app
RUN corepack enable
COPY package.json yarn.lock .yarnrc.yml nuxt.config.ts tsconfig.json ./
COPY app app
RUN --mount=type=cache,target=/root/.yarn/berry/cache,sharing=locked \
  yarn install --immutable

# Build. The site's address makes the canonical links, sitemap and social
# images absolute. The assistant's provider is chosen here: the AI Gateway
# when the AI_GATEWAY_API_KEY build secret is given (it isn't kept in the
# image), else Ollama.
FROM deps AS build
COPY . .
ARG NUXT_SITE_URL
RUN --mount=type=secret,id=AI_GATEWAY_API_KEY,env=AI_GATEWAY_API_KEY \
  yarn build

# Run: the server only. Nuxt Content writes its database in .output/server/
# and Nitro its storage in .data/, hence their owner.
FROM node:${NODE_VERSION}-bookworm-slim AS app
ENV NODE_ENV=production HOST=0.0.0.0 PORT=3000
WORKDIR /app
COPY --from=build --chown=node:node /app/.output ./.output
RUN mkdir .data && chown node:node .data
USER node
EXPOSE 3000
HEALTHCHECK --interval=30s --timeout=5s --start-period=20s --retries=3 \
  CMD ["node", "-e", "fetch('http://127.0.0.1:3000/').then(r => process.exit(r.ok ? 0 : 1), () => process.exit(1))"]
CMD ["node", ".output/server/index.mjs"]
