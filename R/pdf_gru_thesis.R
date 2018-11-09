#' GRU thesis template for pdf output
#'
#' @inheritParams bookdown::pdf_document2
#' @inheritParams rmarkdown::pdf_document
#' @param ... Arguments to \code{bookdown::pdf_document2}
#'
#' @return R Markdown output format to pass to
#'   \code{\link[rmarkdown:render]{render}}
#'
#' @importFrom bookdown pdf_document2
#'
#' @examples
#'
#' \dontrun{
#' library(gruRmarkdown)
#'
#' # Create draft
#' rmarkdown::draft(file = "my_thesis.Rmd", create_dir = TRUE,
#'   template = "gru_thesis", package = "gruRmarkdown",  edit = FALSE)
#'
#' # Render thesis PDF
#' rmarkdown::render(input = "my_thesis/my_thesis.Rmd", 
#'   output_format = c("gruRmarkdown::pdf_gru_thesis"))
#'
#' }
#'
#' @export
pdf_gru_thesis <- function(..., keep_tex = TRUE, toc = FALSE, number_sections = FALSE) {
  res = bookdown::pdf_document2(..., keep_tex = keep_tex, toc = toc, number_sections = number_sections,
                                template = .find_file("gru_thesis", file.path("resources", "template.tex")))
  
  res$inherits = "bookdown::pdf_document2"
  res$knitr$opts_knit$out.format = "sweave"
  res$knitr$opts_chunk$prompt = TRUE
  res$knitr$opts_chunk$comment = NA
  res$knitr$opts_chunk$highlight = FALSE
  res
}

