/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./src/**/*.{js,jsx}"
  ],
  theme: {
    extend: {},
  },
  plugins: [require('@tailwindcss/typography'), require("daisyui")],
  daisyui: {
    themes: [
              "light", "dark", "cupcake", "bumblebee", "emerald", "corporate",
              "garden", "aqua", "lofi", "fantasy", "black", "dracula", "cmyk",
              "autumn", "business", "acid", "lemonade", "night", "winter"
            ],
  }
}
