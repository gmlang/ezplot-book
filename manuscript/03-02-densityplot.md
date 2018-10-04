## Density Plot

Previously, we learned how to make histograms using `mk_histogram()`. 
Density plot is similar to histogram except it draws a smooth curve tracing out 
the hights of the bins instead of drawing the bins themselves. 
To make a density plot, we use the function `mk_densityplot()`. 

The `films` dataset has a variable `length` that measures the duration of each 
film in minutes. Let's draw a density plot to show its distribution. 

A>
```r
library(ezplot)
plt = mk_densityplot(films)
p = plt("length", cut_tail = 0) # use cut_tail to remove tails, 0 means not removing any
p = add_labs(p, xlab = "minutes", title = "Distribution of Film Length")
print(p)
```

![Distribution of Film Length](images/density_length-1.png)

We can also draw two density curves of `length`, one for profitable films, 
and the other for unprofitable films.

A>
```r
p = plt(xvar = "length", yvar = "made_money") # remove tails <= 0.5% by default
p = add_labs(p, xlab = "minutes", ylab = "made money?",
             title = "Distribution of Film Length")
print(p)
```

![Distribution of Film Length by Two Groups](images/density_length_by_made_money-1.png)

The resulting density plot has `length` on the x-axis and `made_money` on the
y-axis, and this correpsonds to how we specified xvar and yvar in `plt()`. Yes,
what you specify is what you get. This is very intuitive. Let's see another
example. Let's plot the density of `rating` by `year_cat`.

A>
```r
plt("rating", "year_cat", font_size = 9) 
```

![Distribution of Film Length by Years](images/density_rating_by_year_cat-1.png)

But the y variable must be character or factor type, and it cannot be integer
or numeric. For example, `year` is of integer type, and if we try to plot the
density of `rating` by `year`, it'll throw an error.

A>
```r
plt("rating", "year") # throws error when yvar is integer or numeric
```
A>
```
Error in plt("rating", "year"): The y variable, year, is integer or numeric. Change to factor or character.
```

For homework, read the document of `mk_densityplot()` and run the examples. 
You can pull up the document by running `?mk_densityplot` in Rstudio. 
