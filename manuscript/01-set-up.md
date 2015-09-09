# Set up

1. Install [R](http://www.r-project.org) and [Rstudio](http://www.rstudio.com/products/rstudio/download/).
2. Install a set of development tools:
* On Windows, download and install [Rtools](http://cran.r-project.org/bin/windows/Rtools/). 
* On Mac, install the [Xcode command line tools](https://developer.apple.com/downloads). 
* On Linux, install the R development package, usually called **r-devel** or **r-base-dev**.
3. Install the following R packages.

A> 
```r
install.packages("dplyr")
install.packages("tidyr")
install.packages("devtools")
devtools::install_github("hadley/scales")
devtools::install_github("hadley/ggplot2")
devtools::install_github("jrnold/ggthemes")
devtools::install_github("gmlang/ezplot")
```

Note: throughout this book, if when displaying plots, you encounter an error like this,
`Error in grid.Call(L_textBounds, as.graphicsAnnot(x$label), x$x, x$y,  : polygon edge not found`, just run `dev.off()` first, and then `print(p)`. 