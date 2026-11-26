import tailwindcss from '@tailwindcss/vite'

// The site's own settings. The base layer (@eclipsefdn/solstice-nuxt/base)
// gives the rest: Nuxt Content and Nuxt Studio, the pages and layout, the
// blocks.
export default defineNuxtConfig({
  compatibilityDate: '2026-10-01',
  extends: ['@eclipsefdn/solstice-nuxt/base'],

  css: ['~/assets/css/main.css'],
  vite: {
    plugins: [tailwindcss()],
  },

  // Its address once it has one (a deployment can set another with
  // SITE_URL), and its name.
  site: {
    // url: process.env.SITE_URL || 'https://example.org',
    name: 'Eclipse Project Handbook',
  },

  // Its repository on the Eclipse Foundation's GitLab, which Nuxt Studio
  // commits to, and the icon sets Studio's icon picker offers besides the
  // blocks' (lucide, fa6-solid, fa6-brands), each one installed as
  // @iconify-json/<set>.
  studio: {
    repository: { repo: process.env.STUDIO_REPOSITORY_REPO || 'eclipse-project-handbook' },
    editor: { iconLibraries: ['fa6-regular'] },
  },

  solstice: {
    // The optional features the site doesn't use, and the AI assistant
    // (experimental), with every way to open it: the field at the bottom of
    // the page, the header's button and the search's item.
    features: { newsroom: false, membership: false, youtube: false, hubspot: false, assistant: true },
  },

  assistant: { provider: 'edenai', model: 'amazon/anthropic.claude-haiku-5-5' },
})
