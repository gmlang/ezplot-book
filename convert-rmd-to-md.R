rm(list=ls())

library(knitr)
opts_knit$set(out.format = "markdown")
opts_chunk$set(comment = "", warning = FALSE, message = FALSE, tidy = FALSE,
               echo = TRUE, fig.path='images/', fig.width = 6, fig.height = 6, 
               dev = 'png') # don't use fig.align, it forces html code for img
options(width = 100, scipen = 5, digits = 5)

proj_path = "~/write/ezplot-book"
manu_path = file.path(proj_path, "manuscript")
setwd(manu_path)
rmd_path = file.path(manu_path, "Rmd")

# file_in = file.path(rmd_path, "01-set-up.Rmd")
# knitr::knit(file_in)

file_in = file.path(rmd_path, "02-plot-a-con-var-4-in-1.Rmd")
knitr::knit(file_in)

file_in = file.path(rmd_path, "03-01-histogram.Rmd")
knitr::knit(file_in)

file_in = file.path(rmd_path, "03-02-densityplot.Rmd")
knitr::knit(file_in)

file_in = file.path(rmd_path, "")
knitr::knit(file_in)

file_in = file.path(rmd_path, "")
knitr::knit(file_in)

file_in = file.path(rmd_path, "")
knitr::knit(file_in)

file_in = file.path(rmd_path, "")
knitr::knit(file_in)

file_in = file.path(rmd_path, "")
knitr::knit(file_in)

file_in = file.path(rmd_path, "")
knitr::knit(file_in)

file_in = file.path(rmd_path, "")
knitr::knit(file_in)

file_in = file.path(rmd_path, "")
knitr::knit(file_in)
