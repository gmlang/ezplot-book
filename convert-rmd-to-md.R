rm(list=ls())

# set opts
library(knitr)
opts_knit$set(out.format = "markdown")
opts_chunk$set(comment = "", warning = FALSE, message = FALSE, tidy = FALSE,
               echo = TRUE, fig.path='images/', fig.width = 7, fig.height = 7,
               dev = 'png') # don't use fig.align, it forces html code for img
options(width = 100, scipen = 5, digits = 5)

# set paths
proj_path = "~/Documents/2-Areas/2-Business/MyBooks/ezplot-book"
manu_path = file.path(proj_path, "manuscript")
setwd(manu_path)
rmd_path = file.path(manu_path, "Rmd")

# file_in = file.path(rmd_path, "02-00-plot-dist-convars.Rmd")
# knitr::knit(file_in)

# file_in = file.path(rmd_path, "02-01-histogram.Rmd")
# knitr::knit(file_in)

# file_in = file.path(rmd_path, "02-02-densityplot.Rmd")
# knitr::knit(file_in)

# file_in = file.path(rmd_path, "02-03-boxplot.Rmd")
# knitr::knit(file_in)

# file_in = file.path(rmd_path, "02-04-cdfplot.Rmd")
# knitr::knit(file_in)

# file_in = file.path(rmd_path, "02-05-qqplot.Rmd")
# knitr::knit(file_in)

# file_in = file.path(rmd_path, "02-06-check-dist-convars.Rmd")
# knitr::knit(file_in)

# file_in = file.path(rmd_path, "04-00-plot-dist-catvars.Rmd")
# knitr::knit(file_in)

# file_in = file.path(rmd_path, "04-01-regular-barchart.Rmd")
# knitr::knit(file_in)

# file_in = file.path(rmd_path, "04-02-dodged-n-stacked-barchart.Rmd")
# knitr::knit(file_in)

# file_in = file.path(rmd_path, "04-03-horizontal-barplot-n-lollipop.Rmd")
# knitr::knit(file_in)

# file_in = file.path(rmd_path, "04-04-likertplot.Rmd")
# knitr::knit(file_in)

# file_in = file.path(rmd_path, "05-01-scatterplot.Rmd")
# knitr::knit(file_in)

# file_in = file.path(rmd_path, "05-02-lineplot.Rmd")
# knitr::knit(file_in)

# file_in = file.path(rmd_path, "05-03-rank-order-plot.Rmd")
# knitr::knit(file_in)

# file_in = file.path(rmd_path, "05-04-dumbbell.Rmd")
# knitr::knit(file_in)

# file_in = file.path(rmd_path, "05-05-heatmap.Rmd")
# knitr::knit(file_in)

# file_in = file.path(rmd_path, "05-06-forestplot.Rmd")
# knitr::knit(file_in)

# file_in = file.path(rmd_path, "06-01-web-display.Rmd")
# knitr::knit(file_in)

# file_in = file.path(rmd_path, "06-02-combine-plots.Rmd")
# knitr::knit(file_in)
