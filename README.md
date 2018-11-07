# gruRmarkdown

Provides Rmarkdown templates to GRU work. To install use
```
devtools::install_github("gru-wu/gruRmarkdown")
```

# Usage 
```
library(gruRmarkdown)

# Create draft
rmarkdown::draft(file = "my_brief.Rmd", create_dir = TRUE,
   template = "fineprint_brief", package = "gruRmarkdown",  edit = FALSE)

# Render brief in PDF and HTMl format
rmarkdown::render(input = "my_brief/my_brief.Rmd",
   output_format = c("gruRmarkdown::pdf_fineprint_brief", "gruRmarkdown::html_fineprint_brief"))
```
