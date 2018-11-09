
.find_file = function(template, file) {
  template = system.file("rmarkdown", "templates", template, file, package = "gruRmarkdown")
  if (template == "")
    stop("Template file ", template, "/", file, "not found", call. = FALSE)
  template
}

