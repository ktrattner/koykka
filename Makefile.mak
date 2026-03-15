PORT ?= 4173
HOST ?= 127.0.0.1

# Install Ruby dependencies locally into vendor/bundle.
install:
	bundle install

# Run the site locally with incremental rebuilds.
serve:
	bundle exec jekyll serve --host $(HOST) --port $(PORT)

# Clean the generated site (_site folder)
clean:
	rm -rf _site

# Build site (no server)
build:
	bundle exec jekyll build
