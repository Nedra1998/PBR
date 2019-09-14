FILES := $(filter-out ./SUMMARY.md, $(shell find . -name "*.md"))

pdf: Specula.pdf

serve: Specula.pdf
	pdf Specula.pdf
	while inotifywait ./ -e close_write; do pandoc $(FILES) -o Specula.pdf --from markdown --template eisvogel --listings; done

gitbook:
	gitbook serve

Specula.pdf: $(FILES)
	pandoc $(FILES) -o Specula.pdf --from markdown --template eisvogel --listings

