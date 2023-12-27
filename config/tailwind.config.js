/** @type {import('tailwindcss').Config} */

module.exports = {
  content: [
    `${process.env.SIMPLE_FORM_TAILWIND_DIR}/**/*.rb`,
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}',
    './node_modules/flowbite/**/*.js'
  ],
  theme: {
    colors: {
      light: '#D9D9D9',
      transBrown: '#776960',
      lightBrown: '#7E481C',
      darkBrown: '#351E10',
      mid: '#9A8E88',
    },
    fontFamily: {
      sans: ['Belleza', 'sans-serif'],
      serif: ['Belleza', 'serif'],
    },
    extend: {
      spacing: {
        '128': '32rem',
        '144': '36rem',
      },
      borderRadius: {
        '4xl': '2rem',
      }
    }
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
    require('flowbite/plugin')
  ],
   // make sure to safelist these classes when using purge
   safelist: [
    'w-64',
    'w-1/2',
    'rounded-l-lg',
    'rounded-r-lg',
    'bg-gray-200',
    'grid-cols-4',
    'grid-cols-7',
    'h-6',
    'leading-6',
    'h-9',
    'leading-9',
    'shadow-lg',
    'dark'
  ],

}
