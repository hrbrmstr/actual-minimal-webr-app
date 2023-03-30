# Actual Minimal WebR App Shell 

_With optional [Pyodide](https://pyodide.org) support._

- basic HTML5 `index.html` with just enough to get `main.js` + `styles.css` loaded and a couple minimal components to prove WebR is working
- bare minimum, acceptable CSS in `style.css`
- just enough to get R running in `r.js` using ES6 modules
- just enough to _prove_ R is running in the `main.js` ES6 module

## Local Serving

There's a [justfile](https://github.com/casey/just) for running [miniserve](https://github.com/svenstaro/miniserve), a minimal webserver with the necessary HTTP headers. This is 100% optional if you have your own fav way of doing things.

## File Layout

<pre>
.
├── favicon # (um…favicon)
│   ├── about.txt
│   ├── android-chrome-192x192.png
│   ├── android-chrome-512x512.png
│   ├── apple-touch-icon.png
│   ├── favicon-16x16.png
│   ├── favicon-32x32.png
│   ├── favicon.ico
│   └── site.webmanifest
├── index.html                # (where it all starts)
├── justfile                  # (modern "Makefile")
├── main.js                   # (main app runner)
├── py.js                     # (optional pyodide support)
├── r.js                      # (WebR stuff)
├── style.css                 # (minimal style sheet)
├── webr-serviceworker.js.map # (not necessary but cleans up DevTools console)
└── webr-worker.js.map        # (not necessary but cleans up DevTools console)
</pre>