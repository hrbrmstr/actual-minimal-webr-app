# This is a justfile (https://github.com/casey/just)

# install/update miniserve
install-miniserve:
  cargo install miniserve

# serve project (requires miniserve)
serve:
	miniserve \
		--header "Cache-Control: no-cache; max-age=1" \
		--header "Cross-Origin-Embedder-Policy: require-corp" \
		--header "Cross-Origin-Opener-Policy: same-origin" \
		--header "Cross-Origin-Resource-Policy: cross-origin" \
		--index index.html \
		.

# open a browser to ^^ (macOS Chrome Beta)
browse:
	open -a "Google Chrome Beta"  http://localhost:8080/
