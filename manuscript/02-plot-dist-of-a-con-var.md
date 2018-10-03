# Plot the Distribution of a Continuous Variable

Let's begin with an example. First, we load the ezplot package, which contains 
a dataset of films from IMBD.com. 

```r
library(ezplot)
?films
```

The variable `budget` is continuous, and we can draw a histogram using the 
`mk_histogram()` function. 

```r
plt = mk_histogram(films) # plt is a function
plt("budget") # note the quotation marks around budget
```

![Histogram of Budget](images/hist_budget-1.png)

We can also draw a density plot.

```r
plt = mk_densityplot(films) 
plt("budget") 
```

![Density plot of Budget](images/density_budget-1.png)

Or a boxplot.

```r
plt = mk_boxplot(films) 
plt(yvar = "budget") 
```

![Boxplot of Budget](images/box_budget-1.png)

These plots show the distribution of budget has a long right tail. We can
confirm budget is not normally distributed by looking at its qq-normal plot. 

```r
plt = mk_qqplot(films) 
plt("budget", detrend = F) 
```

![Q-Q Normal plot of Budget](images/qq_budget-1.png)

A normal distribution would have most of data points aligned linearly along the 
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
plt2 = mk_histogram(films)
plt2("log_budget")
```

![Histogram of log(Budget)](images/hist_log_budget-1.png)


```r
plt2 = mk_densityplot(films)
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

The rest of the book is organized into three chapters. In chapter 3, we'll learn
how to make histogram, density plot, boxplot and qqplot. In chapter 4, we'll 
learn how to make regular, dodged and stacked bar charts, their horizontal
cousins and likert plot. In chapter 5, we'll learn how to make scatterplot, 
lineplot, dumbbell plot and heatmap. 


