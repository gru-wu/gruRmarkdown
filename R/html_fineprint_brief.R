#' FINEPRINT Brief template for html output
#'
#' @inheritParams bookdown::html_document2
#' @inheritParams rmarkdown::html_document
#' @param ... Arguments to \code{bookdown::html_document2}
#'
#' @return R Markdown output format to pass to
#'   \code{\link[rmarkdown:render]{render}}
#'
#' @importFrom bookdown html_document2
#'
#' @examples
#'
#' \dontrun{
#' library(gruRmarkdown)
#'
#' # Create draft
#' rmarkdown::draft(file = "my_brief.Rmd", create_dir = TRUE,
#'   template = "fineprint_brief", package = "gruRmarkdown",  edit = FALSE)
#'
#' # Render brief PDF and HTMl
#' rmarkdown::render(input = "my_brief/my_brief.Rmd",
#'   output_format = c("gruRmarkdown::pdf_fineprint_brief", "gruRmarkdown::html_fineprint_brief"))
#'
#' }
#'
#' @export
html_fineprint_brief <- function(..., toc = FALSE, theme = NULL, number_sections = FALSE) {
  bookdown::html_document2(..., toc = toc, theme = theme, number_sections = number_sections,
                           template = .find_file("fineprint_brief", file.path("resources", "template.html")))
}
