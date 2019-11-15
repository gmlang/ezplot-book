## Dodged or Stacked Bar Chart

A dodged or stacked bar chart is often used to show relationships between two 
categorical and one continous variables. For example, take `year_cat` and `made_money` from the dataset `films`. The former groups years into four brackets and the latter flags if a film made money or not. If we want to compare the frequencies of profitable vs. unprofitable films for each time period, we can make a dodged bar chart.

A>
```r
library(ezplot)
plt = mk_barplot_freq(films)
plt(xvar = "year_cat", fillby = "made_money")
```

![Number of Profitable vs. Unprofitable Films for Each Time Period](images/barplot_dodged-1.png)
 
We see that there are more profitable films than unprofitable ones at each time 
period. By the way, the blue and orange colors are color-blind friendly. Instead of a dodged bar chart, we can draw a stacked bar chart by setting `show_pct = TRUE` inside `plt()`.

A>
```r
plt(xvar = "year_cat", fillby="made_money", show_pct = TRUE, 
    legend_title = "Is profitable?", legend_pos = "top")
```

![Percents of Profitable vs. Unprofitable Films for Each Time Period](images/barplot_stacked-1.png)

The stacked bar chart is more appropriate when comparing the relative frequencies
between categories. The proportion of profitable films has been decreasing
over the years. During 1950-1970, more than 86% of films made money. But only 66% of films made money between 1990 and 2014. 

Just for fun, let's switch places for `year_cat` and `made_money`. This will put
`made_money` on x-axis and color the bars with `year_cat`. In order to make the chart uncluttered, let's also disable the bar labels by setting `label_size = 0`.

A>
```r
plt(xvar = "made_money", fillby = "year_cat", label_size = 0,
    legend_title = NULL, legend_pos = "top")
```

![Number of Films at Each Period between Profitable and Unprofitable Films](images/barplot_dodged_p2-1.png)

So when supplied with a `fillby` variable name, the function `mk_barplot_freq()` can be used to visualize the frequencies or relative frequencies of a categorical variable grouped by the `fillby` variable. But what if you are not interested in
frequencies or relative frequencies? What if you are interested in the aggregated value of some continuous variable? For example, `films` has a variable `votes` for the number of votes a film received from IMBD users. We want to know the total number of votes for each MPAA rating breaking down by profitable and unprofitable
films respectively. We can use the function `mk_barplot_resp()` and set `yvar = "votes" and fillby = "made_money"` inside `plt()` as shown in the code below. 

A>
```r
plt = mk_barplot_resp(films)
plt(xvar = "mpaa", yvar = "votes", fillby = "made_money", label_size = 0, 
    legend_title = "Is profitable?", legend_pos = "bottom")
```

![Votes of Profitable and Unprofitable Films for each MAPP rating](images/barplot_dodged_p3-1.png)

Now it's your turn. Run `str(films)` to examine its variables. Pick two 
categorical variables and a continuous one, and visualize the relationships 
among them. You may also need to perform some data filtering. If you run into 
problems, read the document of `mk_barplot_freq()` and `mk_barplot_resp()`. 
To access the documents, run `?mk_barplot_freq` or `?mk_barplot_resp` in Rstudio.