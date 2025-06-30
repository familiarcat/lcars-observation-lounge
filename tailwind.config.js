// tailwind.config.js
module.exports = {
  content: [
    "./app/**/*.{ts,tsx}",
    "./components/**/*.{ts,tsx}",
    "./pages/**/*.{ts,tsx}",
  ],
  theme: {
    extend: {
      colors: {
        'lcars-black': '#000000',
        'lcars-peach': '#FFB870',
        'lcars-blue': '#2F9ED4',
        'lcars-orange': '#D67E2C',
        'lcars-purple': '#9966CC',
        'lcars-bright-purple': '#CC99FF',
        'lcars-lavender': '#E5CCFF',
        'lcars-light-blue': '#A8D1FF',
        'lcars-dark-blue': '#1B365D',
        'lcars-pink': '#FFCCFF',
        'lcars-yellow': '#FFF275',
        'lcars-cyan': '#8FF7FF',
        'lcars-grey': '#B0B0B0',
        'lcars-light-grey': '#D3D3D3',
        'lcars-dark-grey': '#505050',
        'lcars-white': '#FFFFFF',
      },
      borderRadius: {
        'xl': '1rem',
        '2xl': '1.5rem',
        '3xl': '2rem',
        'tl-3xl': '2rem 0 0 0',
        'tr-3xl': '0 2rem 0 0',
        'bl-3xl': '0 0 0 2rem',
        'br-3xl': '0 0 2rem 0',
      },
    },
  },
  plugins: [],
};
