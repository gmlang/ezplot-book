# Plot the Distribution of a Categorical Variable

The types of charts we learned so far are good for understanding the distribution of a continuous variable. What about categorical variables? The distribution of a categorical variable simply consists of the frequencies 
(counts) or relative frequencies (percentages) of its levels, which can be visualized with bar charts. Let's start with an example. The `mpaa` variable from the `films` dataset has 5 unique values: `NA`, "PG-13", "R", "PG", and "NC-17". 

A>
```r
library(ezplot)
unique(films$mpaa)
```
A>
```
[1] NA      "PG-13" "R"     "PG"    "NC-17"
```

Let's replace `NA` with "(Missing)".

A>
```r
films$mpaa = forcats::fct_explicit_na(films$mpaa)
unique(films$mpaa)
```
A>
```
[1] (Missing) PG-13     R         PG        NC-17    
Levels: NC-17 PG PG-13 R (Missing)
```

Next let's make a bar chart to show its frequency counts. Notice in the code block below we don't need to tally the counts ourselves. The function `mk_barplot_freq` does that automatically. All we need is to pass into `plt()` the name of the categorical variable, which is `"mpaa"` in this case.

A>
```r
plt = mk_barplot_freq(films)
plt("mpaa")
```

![Frequency of MPAA](images/barplot_freq_mpaa_cnt_p1-1.png)

The resulting chart is quite elobrate. It has the frequency of each category level labeled on top of each bar, and the corresponding relative frequency labeled in the middle of each bar body. The levels are ordered alphanumerically from left to right by default. But we can also order them ascendingly or descendingly according to bar height. And we can change the number of decimal places of the % labels.

A>
```r
plt("mpaa", xorder = "descend", label_decimals = 2)
```

![Frequency of MPAA](images/barplot_freq_mpaa_cnt_p2-1.png)

Instead of showing the raw counts on y-axis, we can show relative frequencies (%) by setting `show_pct = TRUE`. If we do that, the top and middle bar labels will also switch places.  

A>
```r
plt("mpaa", show_pct = TRUE, xorder = "descend") 
```

![Relative Frequency of MPAA](images/barplot_freq_mpaa_pct-1.png)

To summarize, when we have a dataset where each row is an individual record, we can use `mk_barplot_freq()` to make bar charts for understanding the distribution of any categorical variables in the dataset. Now try the following exercises.

1. Read the document of `mk_barplot_freq()`. You can pull up the documents by running `?mk_barplot_freq` in Rstudio. 
2. Make a bar chart to show the number of drama films for each MPAA rating. 
3. Make a bar chart to show the percent of action films for each MPAA rating.