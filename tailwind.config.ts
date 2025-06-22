import type { Config } from 'tailwindcss'

const config: Config = {
  darkMode: 'class',
  content: [
    './app/**/*.{ts,tsx}',
    './components/**/*.{ts,tsx}',
  ],
  theme: {
    extend: {
      colors: {
        'lcars-peach': '#FFB870',
        'lcars-blue': '#2F9ED4',
        'lcars-black': '#000000',
        'lcars-orange': '#D67E2C',
        'lcars-lavender': '#B48EFF',
        'lcars-gray': '#888888',
        'lcars-red': '#FF4433',
        'lcars-green': '#33FF88',
      },
      fontFamily: {
        lcars: ['Orbitron', 'sans-serif'],
        mono: ['"Share Tech Mono"', 'monospace'],
      },
      borderRadius: {
        'lcars-lg': '12px',
        'lcars-full': '9999px',
      },
      spacing: {
        'lcars-gap': '1.25rem',
      },
    },
  },
  plugins: [],
}
export default config
