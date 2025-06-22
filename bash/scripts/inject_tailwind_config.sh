#!/bin/bash
# inject_tailwind_config.sh
# Appends LCARS custom colors, fonts, and spacing to tailwind.config.ts

echo "🎨 Injecting Tailwind LCARS theme..."

cat <<EOF >> tailwind.config.ts
theme: {
  extend: {
    colors: {
      'lcars-black': '#000000',
      'lcars-peach': '#FFB870',
      'lcars-blue': '#2F9ED4',
      'lcars-orange': '#D67E2C',
      'lcars-lavender': '#B48EFF',
      'lcars-gray': '#888888',
      'lcars-red': '#FF4433',
      'lcars-green': '#33FF88'
    },
    fontFamily: {
      lcars: ['"Orbitron"', 'sans-serif'],
      mono: ['"Share Tech Mono"', 'monospace']
    },
    borderRadius: {
      'lcars-lg': '12px',
      'lcars-full': '9999px'
    },
    spacing: {
      'lcars-gap': '1.25rem'
    }
  }
}
EOF

echo "✅ Tailwind theme injected."
