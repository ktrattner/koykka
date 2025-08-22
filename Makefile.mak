# Makefile for local Jekyll dev with Docker

# Run site in Docker with live reload
serve:
	docker run --rm -it \
	  -p 4000:4000 -p 35729:35729 \
	  -v "$$(pwd)":/srv/jekyll -w /srv/jekyll \
	  jekyll/jekyll:4 jekyll serve --livereload --host 0.0.0.0

# Clean the generated site (_site folder)
clean:
	rm -rf _site

# Build site (no server)
build:
	docker run --rm -it \
	  -v "$$(pwd)":/srv/jekyll -w /srv/jekyll \
	  jekyll/jekyll:4 jekyll build