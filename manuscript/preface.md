# Preface

This book will teach you two things: how to make good statistical charts for reports or presentations and how to do it fast. The tool we'll use is a R package called ezplot. Here's a quick history about ezplot: about three years ago, I started [my own data science consulting company](http://www.cabaceo.com), and my work requires me to make tons of data visualizations. Initially, I used ggplot, but I gradually discovered that I could not and didn't want to remember the various detailed commands when customizing and annotating a ggplot, so I did a lot of code recycling, but every time I copy-n-pasted a chunk of old code, I had to change the name of the data frame or variable to make it work for the new data. Even worse, as my code base piled up, it became a pain to find the right piece of code for the things I wanted to do. Moreover, code recycling caused the R script file to grow large quickly, yet many repetitions could be abstracted away if thought carefully. One day, the frustration became unbearable, and I decided to make a package to change all this. As a result, ezplot was born. Now, I use ezplot for all my static visualizations, and it reduces the time to make a plot by 80% on average. My productivity has been improved significantly because of ezplot, and I believe it'll also help improve yours.

After working through this book, you will be able to make the following 10 most used statistical charts in less than one-tenth of the time it takes you to do it now.

* histogram
* density plot
* boxplot
* interval plot
* scatter plot
* barplot
* areaplot
* lineplot
* slopeplot
* heatmap

You'll also be able to use colors, in particular, color-blind friendly colors to the best effect. In addition, you'll be able to easily and quickly customize and anotate your charts, for example, change the scale of the axes to `log` or `percent`, enlarge the axis-tick labels for web display, and etc.  

You will get most out of this book by typing and running the code given in the book. Do NOT just copy and paste. Type the code. This will help you become a better R programmer. 

Good luck and Happy Learning!
