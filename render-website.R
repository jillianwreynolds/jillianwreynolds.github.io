last_modified_date <- format(file.info("index.qmd")$mtime, "%Y%m%d")

output_file_name <- glue::glue("Reynolds-Jillian_CV-{last_modified_date}.pdf")

quarto_render("index.qmd", output_format = "pdf", output_file = output_file_name)

quarto_render("index.qmd", output_format = "html")

quarto_preview("index.qmd")
