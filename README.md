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
  Gateway's key (else the assistant asks Ollama on this machine) and Nuxt
  Studio's GitLab application.
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
- The assistant's provider is chosen when the image is built: Vercel's AI
  Gateway if the build has the `AI_GATEWAY_API_KEY` secret
  (`docker build --secret id=AI_GATEWAY_API_KEY,env=AI_GATEWAY_API_KEY …`;
  on Coolify, the variable as a build variable with Docker build secrets on),
  else Ollama. The key is also needed when the server runs.
- With Ollama, `NUXT_ASSISTANT_OPTIONS_URL` is its address as the container
  sees it (default `http://127.0.0.1:11434/api`, inside the container), and
  `NUXT_ASSISTANT_MODEL` the model.
- Nuxt Studio needs the variables of `.env.example` when the server runs; it
  commits to the repository `nuxt.config.ts` names (`studio.repository`).

## License

The handbook's content and the site are made available under the
[Eclipse Public License 2.0](LICENSE) (`SPDX-License-Identifier: EPL-2.0`).
The handbook is Copyright © Eclipse Foundation, Inc. and others: see
[NOTICE.md](NOTICE.md) for the trademarks and third-party content.
