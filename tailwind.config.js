/** @type {import('tailwindcss').Config} */
export default {
  content: ['./index.html', './src/**/*.{js,ts,jsx,tsx}'],
  theme: {
    extend: {
      colors: {
        navy: {
          50: '#eef1f6',
          100: '#cdd4e3',
          200: '#9baac7',
          300: '#6981ab',
          400: '#3d5d8f',
          500: '#254273',
          600: '#1e3461',
          700: '#1A2B4A',
          800: '#142240',
          900: '#0d1728',
          950: '#080e19',
        },
        teal: {
          50: '#e5f5f6',
          100: '#b3e4e7',
          200: '#80d3d7',
          300: '#4dc2c8',
          400: '#26b5bc',
          500: '#008C95',
          600: '#007b83',
          700: '#006670',
          800: '#00515c',
          900: '#003d48',
        },
      },
      fontFamily: {
        sans: ['Poppins', 'system-ui', 'sans-serif'],
      },
    },
  },
  plugins: [],
};
