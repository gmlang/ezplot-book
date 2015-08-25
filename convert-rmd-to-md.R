rm(list=ls())

library(knitr)
opts_knit$set(out.format = "markdown")

proj_path = "~/write/ezplot-book"
manu_path = file.path(proj_path, "manuscript")
setwd(manu_path)
rmd_path = file.path(manu_path, "Rmd")

# file_in = file.path(rmd_path, "01-set-up.Rmd")
# knitr::knit(file_in)

file_in = file.path(rmd_path, "02-plot-a-con-var-4-in-1.Rmd")
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

file_in = file.path(rmd_path, "")
knitr::knit(file_in)

file_in = file.path(rmd_path, "")
knitr::knit(file_in)
