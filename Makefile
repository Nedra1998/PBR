FILES:=$(filter-out ./src/SUMMARY.md, $(shell find ./src -name "*.md" | sort -V))

pdf: pbr.pdf

html: $(FILES)
	mdbook build

watch: pbr.pdf
	pdf pbr.pdf
	while inotifywait ./src; do pandoc $(filter-out ./src/SUMMARY.md, $(shell find ./src -name "*.md" | sort -V)) -o pbr.pdf --template eisvogel --listings; done

serve: $(FILES)
	mdbook serve

pbr.pdf: $(FILES)
	pandoc $(FILES) -o $@ --template eisvogel --listings


