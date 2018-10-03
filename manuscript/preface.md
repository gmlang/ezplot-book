# Preface

This book will teach you two things: how to make good statistical charts, and how to do it fast. The tool we'll use is a R package called ezplot, which I wrote to help me with my [consulting](http://www.cabaceo.com) work. A picture is worth a thousand words, but it's not easy to make a high quality chart, especially when we want to do it quickly. Hadley's ggplot is a great tool, but you still need to know the numerous commands for customizing in order to get a publishable chart. In the beginning, I used ggplot and did a lot of code recycling from project to project. But every time I copy-n-pasted a chunk of code, I had to change the data frame or variable name to make the code work for the new situation. This worked fine for one or two charts, but became very tedious when I needed to make more than 10 plots, and I often had to make 50+ charts. Even worse, as my code reservoir piled up, it became painful to find the right piece of code for the kind of customizations I wanted to do. Plus, code recycling made my scripts bulky and hard to read. So one day I sat down and wrote ezplot to change it all. Under the hood, all ezplot functions use ggplot2 functions. My goal was not to invent a new plotting system, but to make it very easy to create final-versioned ggplot2 charts with a couple of lines of code, requiring the user zero or minimal effort of customization. 

Ezplot has made me happier. A plot that used to takes me 30 minutes now takes me less than 1 minute. I now use ezplot for all my client projects. I truly love it, and I think you'll love it too.

In this book, I'll show you the nuances of ezplot with example code and comments. You'll watch your productivity soar. After working through this book, you will be able to make the following 10 most used statistical charts in less than 1/30th of the time you use now.

* histogram & density plot
* boxplot
* qqplot
* barplot
* horizontal barplot & lollipop plot
* likert plot (a.k.a, horizontal diverging barplot)
* scatterplot
* lineplot
* dumbbell plot
* heatmap


You will get most out of this book by typing and running the code given in the book. Do NOT just copy and paste. Type the code. This will help you become a better R programmer. If you run into typos or errors, please let me know at gmlang@cabaceo.com.

Good luck and Happy Learning!
