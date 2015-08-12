# test
gmlang  
`r Sys.Date()`  

# Introduction

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. This package provides output formats to create "Tufte-style" handouts. 

<aside>For more details on using R Markdown see <http://rmarkdown.rstudio.com>.</aside> 

Tufte-style handouts make heavy use of the right margin. Our package provides templates for creating these types of documents in html format. The pdf format is now part of `rmarkdown` and uses the tufte-handout document class.

<aside>Credit: <http://code.google.com/p/tufte-latex/></aside>

The html format uses bootstrap with some css to put stuff in the margin. Each uses knitr hooks to specify the types of figures. Pdf versions of tufte handouts can be made with the rmarkdown function `tufte_handout`.

<aside> Check out a <a href="http://rmarkdown.rstudio.com/examples/tufte-handout.pdf">pdf example</a> from Rstudio!</aside>

# Usage

To create sidenotes in html, some raw html is required. We make use of the `aside` tag. Place the sidenote content between the tags `<aside></aside>` to place them in the sidebar. In the pdf version, simply use the pandoc footnote format `^[Content]`. Anything can be enclosed in the `aside` tag, even code!

<aside>

```r
rnorm(1)
```

```
## [1] 1.153883
```
</aside>

The package provides two custom hooks for figure placement. The first is `marginfigure`. Set `marginfigure = TRUE` in a chuck option to place a figure in the right margin. Optionally, specify the figure size and include a caption. Captions are passed as strings through `fig.cap` in the chunk options.


```r
library(ggplot2)
ggplot(mtcars, aes(y = mpg, x = wt)) + geom_point() + stat_smooth(method = "lm")
```

<aside style="margin-top:-6em"> <img src="images/fig1-1.png"><p class="caption">This is a marginfigure</p></aside>

The html documents have the body set at a fixed width of 960px. Feel free to edit the css to suit your needs. Html output supports any of the built in Bootstrap themes. Be careful using the fluid grid system, it may break the output for narrow screens. 
