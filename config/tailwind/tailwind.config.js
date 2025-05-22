// config/tailwind/tailwind.config.js
const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      colors: {
        primary: {
          DEFAULT: '#f4a300',
          50: '#fff9eb',
          100: '#ffefc5',
          200: '#ffe4b5', // accent color
          300: '#ffcc73',
          400: '#ffb84d',
          500: '#f4a300', // base primary
          600: '#e68500',
          700: '#cc6a00',
          800: '#a45300',
          900: '#7a3d00',
          950: '#482200',
        },
        background: {
          DEFAULT: '#1e2a38',
          50: '#f7f9fc',
          100: '#eef2f7',
          200: '#d9e2ee',
          300: '#b9c9df',
          400: '#94abd0',
          500: '#7490be',
          600: '#5374a7',
          700: '#425e89',
          800: '#354b6e',
          900: '#1e2a38', // base background
          950: '#121c29',
        },
        textcolor: {
          DEFAULT: '#fdfaf6',
          muted: '#a0aec0',
        },
        muted: {
          DEFAULT: '#a0aec0',
          50: '#f8fafc',
          100: '#f1f5f9',
          200: '#e2e8f0',
          300: '#cbd5e1',
          400: '#a0aec0', // base muted
          500: '#718096',
          600: '#4a5568',
          700: '#2d3748',
          800: '#1a202c',
          900: '#0f172a',
          950: '#020617',
        },
      },
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
      boxShadow: {
        'paper': '0 1px 3px rgba(0, 0, 0, 0.05), 0 1px 2px rgba(0, 0, 0, 0.1)',
        'paper-md': '0 4px 6px -1px rgba(0, 0, 0, 0.05), 0 2px 4px -1px rgba(0, 0, 0, 0.1)',
        'paper-lg': '0 10px 15px -3px rgba(0, 0, 0, 0.05), 0 4px 6px -2px rgba(0, 0, 0, 0.1)',
      },
      borderRadius: {
        'paper': '12px',
      }
    },
  },
  plugins: [
    require('@tailwindcss/forms')
  ]
}