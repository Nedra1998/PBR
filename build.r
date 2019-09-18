#!/usr/bin/env Rscript

args = commandArgs(trailingOnly=TRUE)

if(length(args)==0) {
  bookdown::render_book("01-introduction.Rmd", "bookdown::gitbook")
  bookdown::render_book("01-introduction.Rmd", "bookdown::pdf_book")
  bookdown::render_book("01-introduction.Rmd", "bookdown::epub_book")
} else if(length(args) == 1 && args[1] == "serve") {
  bookdown::serve_book(dir = ".", output_dir = "docs", preview = TRUE, in_session = TRUE, quiet = FALSE)
} else if(length(args) == 1 && args[1] == "clean") {
  bookdown::clean_book(TRUE)
} else {
  bookdown::render_book("01-introduction.Rmd", "bookdown::gitbook")
  bookdown::render_book("01-introduction.Rmd", "bookdown::pdf_book")
  bookdown::render_book("01-introduction.Rmd", "bookdown::epub_book")
}

