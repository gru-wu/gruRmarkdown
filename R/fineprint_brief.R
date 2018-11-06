#' FINEPRINT Brief template
#'
#' @inheritParams rmarkdown::pdf_document
#' @param ... Arguments to \code{rmarkdown::pdf_document}
#'
#' @return R Markdown output format to pass to
#'   \code{\link[rmarkdown:render]{render}}
#'
#' @importFrom rmarkdown pdf_document
#'
#' @examples
#'
#' \dontrun{
#' library(gruRmarkdown)
#'
#' rmarkdown::draft(file = "my_brief.Rmd", create_dir = TRUE, template = "fineprint_brief", package = "gruRmarkdown",  edit = FALSE)
#'
#' # Render brief PDF and HTMl
#' rmarkdown::render(input = "my_brief/my_brief.Rmd",
#'   output_format = c("gruRmarkdown::fineprint_brief", "bookdown::html_document2"),
#'   output_options = list(number_sections = FALSE))
#'
#' }
#'
#' @export
fineprint_brief = function(..., keep_tex = TRUE, toc = FALSE, number_sections = FALSE) {
  res = bookdown::pdf_document2(..., keep_tex = keep_tex, toc = toc, number_sections = number_sections,
                                template = .find_file("fineprint_brief", file.path("resources", "template.tex")))

  res$inherits = "bookdown::pdf_document2"
  res$knitr$opts_knit$out.format = "sweave"
  res$knitr$opts_chunk$prompt = TRUE
  res$knitr$opts_chunk$comment = NA
  res$knitr$opts_chunk$highlight = FALSE
  res$knitr$opts_chunk$fig.align = "center"
  res
}

.find_file = function(template, file) {
  template = system.file("rmarkdown", "templates", template, file, package = "gruRmarkdown")
  if (template == "")
    stop("Template file ", template, "/", file, "not found", call. = FALSE)
  template
}

