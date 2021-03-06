# Plot the Distribution of a Categorical Variable

The charts we learned so far are good for showing distributions of continuous variables. What about categorical variables? The distribution of a categorical variable is made up by the frequencies (counts) or relative frequencies (percentages) of its categories. To visualize the distribution of a categorical variable, we use bar charts. Let's start with an example. The variable `mpaa` of the `films` dataset has 5 unique categories: `(Missing), PG-13, R, PG, NC-17`. 

```r
library(ezplot)
films$mpaa = forcats::fct_explicit_na(films$mpaa)
unique(films$mpaa)
```

```
[1] (Missing) PG-13     R         PG        NC-17    
Levels: NC-17 PG PG-13 R (Missing)
```

Let's make a bar chart to display their frequency counts. Note that we don't need to tally the counts ourselves before plotting them out. The function `mk_barplot_freq` does it behind the scene automatically. We just need to pass the categorical variable name (`"mpaa"`) to the function returned by `mk_barplot_freq(films)`. 

```r
plt = mk_barplot_freq(films)
plt("mpaa", font_size = 8)
```

![](images/barplot_freq_mpaa_cnt_p1-1.png)

The resulting bar chart has many details. It has the frequencies (counts) labeled on top of each bar, and the relative frequencies (percents) labeled in the middle. The levels are ordered alphanumerically from left to right by default. With a few strokes, we can easily re-order them in ascending (or descending) order of the bars' heights. We can also change the number of decimal places of the % labels.

```r
plt("mpaa", xorder = "descend", label_decimals = 2, font_size = 8)
```

![](images/barplot_freq_mpaa_cnt_p2-1.png)

Instead of frequencies, we can show relative frequencies (%) on the y-axis by setting `show_pct = TRUE`. If we do that, the top and middle bar labels will also trade places.  

```r
plt("mpaa", show_pct = TRUE, xorder = "descend", font_size = 8) 
```

![](images/barplot_freq_mpaa_pct-1.png)

To summarize, when we have a dataset where each row is an individual record and the frequency distribution of a categorical variable is not directly available, we can use `mk_barplot_freq()` to understand its distribution without having to first tally up the frequencies. 

Now try the following exercises.

1. Read the document of `mk_barplot_freq()`. You can pull it up by running `?mk_barplot_freq` in Rstudio. 
2. Use it to show the number of drama films for each MPAA rating (`mpaa`). 
3. Use it to show the percent of action films for each period (`year_cat`).
