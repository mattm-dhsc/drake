library(fs)
dir <- "_book"
if (file.exists(dir)){
  dir_delete(dir)
}
dir_create(dir)
dir_copy("images", dir)
options(drake_make_menu = FALSE, drake_clean_menu = FALSE)
bookdown::render_book(
  input = "index.Rmd",
  output_format = "bookdown::gitbook"
)
bookdown::render_book(
  input = "index.Rmd",
  output_format = "bookdown::pdf_book",
  output_dir = "pdfbook"
)
