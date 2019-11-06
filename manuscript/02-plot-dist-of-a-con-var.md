# Plot the Distribution of a Continuous Variable

Let's begin with an example. The `ezplot` package contains a dataset of films from IMBD.com. Let's load the package and look at the variables from the `films` dataset.

```r
library(ezplot)
dplyr::glimpse(films)
```

```
Observations: 5,944
Variables: 53
$ title          [3m[38;5;246m<chr>[39m[23m "'Gung Ho!': The Story of Carlson's Makin Island …
$ year           [3m[38;5;246m<int>[39m[23m 1943, 1997, 2009, 2006, 1999, 1983, 2008, 2008, 1…
$ budget         [3m[38;5;246m<dbl>[39m[23m 866898, 10000000, 7500000, 100000, 16000000, 4520…
$ length         [3m[38;5;246m<int>[39m[23m 88, 113, 95, 86, 97, 101, 109, 104, 103, 100, 107…
$ rating         [3m[38;5;246m<dbl>[39m[23m 6.2, 4.7, 7.8, 7.5, 7.2, 6.2, 5.0, 5.6, 5.6, 4.8,…
$ votes          [3m[38;5;246m<dbl>[39m[23m 898, 2214, 320459, 568, 187762, 3722, 98539, 9447…
$ r1             [3m[38;5;246m<dbl>[39m[23m 4.5, 4.5, 4.5, 4.5, 4.5, 4.5, 4.5, 4.5, 4.5, 4.5,…
$ r2             [3m[38;5;246m<dbl>[39m[23m 4.5, 4.5, 4.5, 4.5, 4.5, 4.5, 4.5, 4.5, 4.5, 4.5,…
$ r3             [3m[38;5;246m<dbl>[39m[23m 4.5, 4.5, 4.5, 4.5, 4.5, 4.5, 4.5, 4.5, 4.5, 14.5…
$ r4             [3m[38;5;246m<dbl>[39m[23m 4.5, 14.5, 4.5, 4.5, 4.5, 4.5, 14.5, 14.5, 14.5, …
$ r5             [3m[38;5;246m<dbl>[39m[23m 14.5, 14.5, 4.5, 4.5, 4.5, 14.5, 14.5, 14.5, 24.5…
$ r6             [3m[38;5;246m<dbl>[39m[23m 24.5, 14.5, 4.5, 4.5, 14.5, 24.5, 14.5, 24.5, 24.…
$ r7             [3m[38;5;246m<dbl>[39m[23m 14.5, 4.5, 14.5, 14.5, 24.5, 24.5, 14.5, 14.5, 14…
$ r8             [3m[38;5;246m<dbl>[39m[23m 14.5, 4.5, 34.5, 24.5, 24.5, 14.5, 4.5, 4.5, 4.5,…
$ r9             [3m[38;5;246m<dbl>[39m[23m 4.5, 4.5, 14.5, 14.5, 14.5, 4.5, 4.5, 4.5, 4.5, 4…
$ r10            [3m[38;5;246m<dbl>[39m[23m 4.5, 4.5, 14.5, 24.5, 14.5, 4.5, 4.5, 4.5, 4.5, 4…
$ mpaa           [3m[38;5;246m<chr>[39m[23m NA, "PG-13", "PG-13", NA, "PG-13", NA, "PG-13", "…
$ boxoffice      [3m[38;5;246m<dbl>[39m[23m 2176489, 13564657, 60722734, 1698530, 737720177, …
$ actor          [3m[38;5;246m<chr>[39m[23m "Wong,Bruce(I)", "Winant,Bruce", "Woodward,JonMor…
$ actress        [3m[38;5;246m<chr>[39m[23m "McDonald,Grace", "Zima,Yvonne", "Weiss,Gelsey", …
$ director       [3m[38;5;246m<chr>[39m[23m "Enright,Ray", "Winant,Scott(I)", "Webb,Marc(I)",…
$ writer         [3m[38;5;246m<chr>[39m[23m "LeFran\xe7ois,W.S.", "Holzman,Winnie", "Weber,Mi…
$ short          [3m[38;5;246m<fct>[39m[23m 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0…
$ drama          [3m[38;5;246m<fct>[39m[23m 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 0, 1, 1, 1, 0…
$ comedy         [3m[38;5;246m<fct>[39m[23m 0, 1, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1…
$ documentary    [3m[38;5;246m<fct>[39m[23m 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0…
$ adult          [3m[38;5;246m<fct>[39m[23m 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0…
$ action         [3m[38;5;246m<fct>[39m[23m 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0…
$ romance        [3m[38;5;246m<fct>[39m[23m 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1…
$ thriller       [3m[38;5;246m<fct>[39m[23m 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1, 1, 0, 0, 1, 0…
$ animation      [3m[38;5;246m<fct>[39m[23m 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0…
$ family         [3m[38;5;246m<fct>[39m[23m 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0…
$ crime          [3m[38;5;246m<fct>[39m[23m 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0…
$ horror         [3m[38;5;246m<fct>[39m[23m 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0…
$ music          [3m[38;5;246m<fct>[39m[23m 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0…
$ adventure      [3m[38;5;246m<fct>[39m[23m 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0…
$ fantasy        [3m[38;5;246m<fct>[39m[23m 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1…
$ sci_fi         [3m[38;5;246m<fct>[39m[23m 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0…
$ mystery        [3m[38;5;246m<fct>[39m[23m 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0…
$ biography      [3m[38;5;246m<fct>[39m[23m 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0…
$ history        [3m[38;5;246m<fct>[39m[23m 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0…
$ sport          [3m[38;5;246m<fct>[39m[23m 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0…
$ musical        [3m[38;5;246m<fct>[39m[23m 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0…
$ western        [3m[38;5;246m<fct>[39m[23m 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0…
$ war            [3m[38;5;246m<fct>[39m[23m 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0…
$ reality_tv     [3m[38;5;246m<fct>[39m[23m 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0…
$ news           [3m[38;5;246m<fct>[39m[23m 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0…
$ talk_show      [3m[38;5;246m<fct>[39m[23m 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0…
$ film_noir      [3m[38;5;246m<fct>[39m[23m 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0…
$ yrs_since_1913 [3m[38;5;246m<int>[39m[23m 30, 84, 96, 93, 86, 70, 95, 95, 83, 87, 93, 94, 9…
$ year_cat       [3m[38;5;246m<chr>[39m[23m "1913-1950", "1990-2014", "1990-2014", "1990-2014…
$ bo_bt_ratio    [3m[38;5;246m<dbl>[39m[23m 2.5106633, 1.3564657, 8.0963645, 16.9853000, 46.1…
$ made_money     [3m[38;5;246m<fct>[39m[23m yes, yes, yes, yes, yes, yes, yes, no, yes, yes, …
```

If you want to learn more about this dataset, for example, the meaning of each variable, you can run `?films` to pull up its documentation. 

Let's focus on the variable `budget`. Its type is numeric, so it's continuous and we can examine its distribution by making a histogram.

```r
plt = mk_histdens(films, "histogram") # plt is a function
plt("budget") # plt() takes in a string
```

![Histogram of Budget](images/hist_budget-1.png)

Alternatively, we can make a density plot.

```r
plt = mk_histdens(films, 'density') 
plt("budget") 
```

![Density plot of Budget](images/density_budget-1.png)

As another alternative, we can draw a boxplot.

```r
plt = mk_boxplot(films) 
plt(yvar = "budget") 
```

![Boxplot of Budget](images/box_budget-1.png)

All three plots show pretty much same information, for example, the distribution of budget has a long right tail. We can confirm budget is NOT normally distributed by looking at its qq-normal plot, also called [normal probability plot](https://en.wikipedia.org/wiki/Normal_probability_plot). 

```r
plt = mk_qqplot(films) 
plt("budget", detrend = F) 
```

![Q-Q Normal plot of Budget](images/qq_budget-1.png)

A normal distribution would have the data points aligned linearly along the 
trend line connecting the bottom left corner to the upper right corner. 

Pay attention to how we used the `mk_xxxx()` functions. First, we passed in
the data frame `films` and got back a function `plt`. Next, we called 
`plt()` with the name of the variable we want to visualize (`"budget"`) as an
argument. As you'll see in later chapters, this usage pattern will occur over 
and over again. All ezplot plotting functions are designed as [functions that return functions](http://masterr.org/r/functions-that-return-functions/), which has two 
benefits: 

1. Consistent Interface. Every plotting function takes a data frame as the only
input and returns a function. The consistent interface allows you to focus on 
what a function does, for example, draw a boxplot or histogram, rather than how 
it does it. 

2. Reusability. The returned function can be used to visualize many variables 
from the same data frame. For example, we ran `plt("budget")` to visualize
the distribution of `budget`. If we want to see the distribution of `boxoffice`,
we can just run `plt("boxoffice")`. This is really handy since we almost always 
want to visualize every variable in a dataset when performing descriptive and
exploratory analyses. 

Coming back to the distribution of `budget`, it's hard to see how it's 
distributed in the center because it's highly skewed to the right by a few 
extremely large values. To solve this, we can apply the log transformation. 
For example, we can add to `films` a new variable called `log_budget` by 
taking the log of `budget` and visualize `log_budget` afterwards.

```r
films$log_budget = log(films$budget)
plt2 = mk_histdens(films) # by default, we get a function for making histograms
plt2("log_budget")
```

![Histogram of log(Budget)](images/hist_log_budget-1.png)


```r
plt2 = mk_histdens(films, 'density')
plt2("log_budget")
```

![Density of log(Budget)](images/density_log_budget-1.png)


```r
plt2 = mk_qqplot(films)
plt2("log_budget", detrend = F)
```

![Q-Q Normal plot of log(Budget)](images/qq_log_budget-1.png)

We see that after taking log, budget becomes a bit left-skewed and is still
not normal. By the way, the reason why we care about normality is that many 
statistical methods, for example, linear regression, are devised based on the 
assumption of normal distribution. When encountering long right tailed data, 
we can often make it approximately normal by taking the log. 

The rest of the book is organized into four chapters. In chapter 3, we'll learn
how to make histogram, density plot, boxplot and qqplot. In chapter 4, we'll 
learn how to make regular, dodged and stacked bar charts, their horizontal
cousins and likert plot. In chapter 5, we'll learn how to make scatterplot, 
lineplot, dumbbell plot and heatmap.

