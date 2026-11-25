# Eclipse Project Handbook

The Eclipse Foundation Project Handbook, on [solstice-nuxt](https://gitlab.eclipse.org/eclipsefdn/software-dev/frameworks-and-tools/solstice-nuxt):
Nuxt, Nuxt Content and Nuxt Studio, the Eclipse Foundation's blocks.

solstice-nuxt comes from its merge request's branch (`feat/assistant-poc`),
installed from git with Yarn 4 (`packageManager`), which corepack runs:

```bash
corepack enable   # once: `yarn` is then the project's Yarn 4 (or run `corepack yarn …`)
yarn install      # clones solstice-nuxt and builds it
yarn dev          # http://localhost:3000, Nuxt Studio at /_studio
yarn build        # prerendered pages and the server Nuxt Studio needs
```

- `content/`: the pages (`index.md` is the home page), a folder per chapter,
  and `data/`: the site's settings (the assistant's name, intro and
  questions too), the header's menu, the footer.
- `nuxt.config.ts`: its address (commented out until it has one), name,
  repository, theme, and the AI assistant (experimental) and its model.
- `.env.example`: the environment it reads, to copy to `.env`: the AI
  Gateway's key, which the assistant needs, and Nuxt Studio's GitLab
  application.
- `app/theme/`: its class maps, extending the default theme's.
- `public/`: its logo (`logo.svg`, and `logo-inverse.svg` on dark
  backgrounds), favicon and the social media images' background:
  solstice-nuxt's until the site has its own; the pages' images in
  `public/images/`.

## Deployment

The `Dockerfile` builds one image: the Nuxt server, on port 3000. On Coolify,
make an application from this repository with the Dockerfile build pack, and
port 3000.

```bash
docker build --build-arg NUXT_SITE_URL=https://handbook.example.org -t eclipse-project-handbook .
docker run -p 3000:3000 --env-file .env eclipse-project-handbook
```

- `NUXT_SITE_URL`, the site's address, is a build argument (on Coolify, a
  build variable): the prerendered pages' canonical links, sitemap and
  social media images need it.
- The assistant answers on Vercel's AI Gateway: `AI_GATEWAY_API_KEY` is a
  variable of the running server, not of the build (on Coolify, a plain
  environment variable). `NUXT_ASSISTANT_MODEL` sets another model.
- Nuxt Studio needs the variables of `.env.example` when the server runs; it
  commits to the repository `nuxt.config.ts` names (`studio.repository`).

## License

The handbook's content and the site are made available under the
[Eclipse Public License 2.0](LICENSE) (`SPDX-License-Identifier: EPL-2.0`).
The handbook is Copyright © Eclipse Foundation, Inc. and others: see
[NOTICE.md](NOTICE.md) for the trademarks and third-party content.
