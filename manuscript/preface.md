# Preface

This book will teach you two things: how to make good statistical charts for reports or presentations, and how to do it fast. The tool we'll use is a R package called ezplot, which I made to help me better do my own work. Three years ago, I started [my own data science consulting company](http://www.cabaceo.com). Since then, almost every project I took requires some sort of data visualization. A picture is worth a thousand words, and this is also true when showing insights from data. But making a correct and engaging "picture" is no easy feat. Hadley's ggplot is a great tool for that, but I didn't want to remember the numerous detailed commands for customizing and annotating a ggplot. So naturally, I did a lot of code recycling, but every time I copy-n-pasted a chunk of old code, I had to manually change the data frame or variable name to make it work for the new situation. This worked fine for one or two plots, but became very tedious and hence annoying when you had to make 60 of them. Even worse, as my code base piled up, it became a pain in the ass to find the right piece of code for the kind of customizations I needed to do. On top of that, code recycling lead my R scripts to grow large quickly, which made them hard to read, yet those repetitions could be eliminated if given enough thoughts. So finally one day, I sat down and wrote ezplot to change it all. I now use ezplot for making all my static charts, and it has made me much happier. A plot that used to take me 1 hour to finish now takes me less than 5 minutes. I truly love it, and I think you'll love it too.

After working through this book, you will be able to make the following 10 most used statistical charts in less than one-tenth of the time you use now.

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

You'll also learn how to use color-blind friendly colors to the best effect. In addition, you'll be able to easily and quickly customize and anotate your charts, for example, change the scale of the axes to `log` or `percent`, enlarge the axis tick labels for web display, and etc.  

You will get most out of this book by typing and running the code given in the book. Do NOT just copy and paste. Type the code. This will help you become a better R programmer. 

Good luck and Happy Learning!

| |

Guangming
PS: if you run into typos or errors, please let me know at gmlang@cabaceo.com
