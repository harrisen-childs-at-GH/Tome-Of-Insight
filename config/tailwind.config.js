const defaultTheme = require('tailwindcss/defaultTheme')
/** @type {import('tailwindcss').Config} */

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}',
    './node_modules/flowbite/**/*.js'
  ],
  theme: {
    colors: {
      'light': '#D9D9D9',
      'lightBrown': '#7E481C',
      'darkBrown': '#351E10',
      'mid': '#9A8E88'
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
      },
      colors: {
        'light': '#D9D9D9',
        'lightBrown': '#7E481C',
        'darkBrown': '#351E10',
        'mid': '#9A8E88'
      }
    }
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
    require('flowbite/plugin')
  ]
}
