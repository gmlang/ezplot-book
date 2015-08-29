## Histogram

As we've already seen from the last chapter, histogram, density plot and boxplot are for displaying the distribution of a continuous variable. We'll look at histogram in this section, density plot and boxplot in the next two sections. Before we start, make sure you load the `ezplot` library. The ezplot function we'll use is `mk_distplot()`.

A>
```r
library(ezplot)
```

The `ezplot` library comes with a dataset of films. You can run the command `?films` to see the descriptions of its variables. If you do that, you'll see that it has a variable called `rating`, which measures the average IMDB user rating. Now, check its type by running the command `str()`.

A>
```r
str(films$rating)
 num [1:5944] 6.2 4.7 7.8 7.5 7.2 6.2 5 5.6 5.6 4.8 ...
```

The output `num` says that R treats it as a numeric variable. A numeric variable can be discrete (whole numbers) or continuous (decimal numbers). From the first few data values (6.2, 4.7, ...) shown in the output, it's clear that `rating` is continuous. And we can draw a histogram to help us understand its distribution.

A>
```r
plt = mk_distplot(films)
title = "Distribution of Average User Rating (1913-2014)"
p = plt("rating", binw=0.3, xlab="Average IMDB User Rating", main=title,
        add_vline_mean=T) 
print(p)
```

![Average Ratings Distribution](images/hist_rating_p1-1.png) 

Notice how we used `mk_distplot()`. We passed it the data frame `films` as input. It returned a function, and we assigned it to the variable `plt`. We then used the function `plt()` to draw the histogram. Note that once again, we had to feed `plt()` the variable name, in this case, `"rating"` in quotes, instead of the variable itself. Do you recall the same usage from the last chapter? Yes, this is how you use every plotting function in ezplot. I assure you this usage pattern will reappear again and again in later chapters. 

Here're some explanations for the other parameters: a histogram is made of bins, and `binw` is the width of the bins; `xlab` is the x-axis label; `main` is the plot title; `add_vline_mean` decides whether to add a vertical line at the mean or not, and when setting `add_vline_mean=T`, it draws a purple line vertically at the mean value of the x's, just like shown in the above histogram. We can also add a vertical line at the median by setting `add_vline_median=T`, and as shown by the plot below, the median vertical line is colored green.

A>
```r
p = plt("rating", binw=0.3, xlab="Average IMDB User Rating", main=title,
        add_vline_mean=T, add_vline_median=T) 
print(p)
```

![Average Ratings Distribution](images/hist_rating_p2-1.png) 

You can read the complete description of the parameters by running `?mk_distplot()`.
