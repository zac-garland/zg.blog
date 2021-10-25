## code to prepare `blog_post_pm` dataset goes here


blog_post_pm <- structure(list(group = c(
  "Workflow (packages & scripts)", "Workflow (packages & scripts)",
  "Workflow (packages & scripts)", "Workflow (packages & scripts)",
  "Data Viz", "Data Viz", "Data Viz", "Data Viz", "Data Viz", "Tidy Data",
  "Tidy Data", "Tidy Data", "Tidy Data", "Programming (iteration, functional vs OOP)",
  "Programming (iteration, functional vs OOP)", "Financial Data",
  "Financial Data", "Financial Data", "Modeling", "Modeling", "Modeling",
  "Rmarkdown Driven Everything", "Rmarkdown Driven Everything",
  "Rmarkdown Driven Everything", "Rmarkdown Driven Everything",
  "Rmarkdown Driven Everything", "Shiny", "Shiny", "Shiny", "HTML, CSS, JS",
  "HTML, CSS, JS", "HTML Widgets", "HTML Widgets", "Data Tables",
  "Data Tables", "Geospatial", "Geospatial", "Geospatial", "Geospatial"
), package = c(
  "usethis", "gert", "devtools", "tidyverse", "ggplot2",
  "plotly", "highcharter", "r2d3", "others", "tidyr", "dplyr",
  "lubridate", "", "purrr", "furrr", "tidyquant", "quantmod", "",
  "tidymodels", "fable", "forecast", "rmarkdown", "flexdashboard",
  "distill", "blogdown", "pkgdown", "shiny", "shinyWidgets", "bslib",
  "htmltools", "shiny", "htmlwidgets", "", "kableExtra", "reactable",
  "leaflet", "highcharts.Maps", "plotly", ""
)), row.names = c(
  NA,
  -39L
), class = c("tbl_df", "tbl", "data.frame")) %>%
  mutate(
    group = case_when(
      group == "HTML Widgets" ~ "HTML, CSS, JS",
      TRUE ~ group
    )
  )

readr::write_csv(blog_post_pm,"data/blog_post_pm.csv")

