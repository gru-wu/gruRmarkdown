# gruRmarkdown

Provides R Markdown templates for GRU work. Currently includes the following templates:

- Theses
- FINEPRINT Briefs



# Usage 

To install use:
```r
devtools::install_github("gru-wu/gruRmarkdown")
```

## Create a FINEPRINT brief
```r
library(gruRmarkdown)

# Create draft
rmarkdown::draft(file = "my_brief.Rmd", create_dir = TRUE,
   template = "fineprint_brief", package = "gruRmarkdown",  edit = FALSE)

# Render brief in PDF and HTMl format
rmarkdown::render(input = "my_brief/my_brief.Rmd",
   output_format = c("gruRmarkdown::pdf_fineprint_brief", "gruRmarkdown::html_fineprint_brief"))
```

## Create a GRU thesis
```r
library(gruRmarkdown)

# Create draft
rmarkdown::draft(file = "my_thesis.Rmd", create_dir = TRUE,
  template = "gru_thesis", package = "gruRmarkdown",  edit = FALSE)

# Render thesis PDF
rmarkdown::render(input = "my_thesis/my_thesis.Rmd", 
  output_format = c("gruRmarkdown::pdf_gru_thesis"))
```

