# Preface

This book will teach you two things: how to make good statistical charts, and how to do it fast. The tool we'll use is a R package called ezplot, which I wrote to improve productivity and workflow for my [client work](http://cabaceo.com/). A picture is worth a thousand words, but it's not easy to make a high quality chart with speed. Hadley's ggplot2 is a great tool, but one still needs to know the nuts and bolts to customize a ggplot2 chart. In the beginning, I did a lot of code recycling. But every time I copy-and-pasted a chunk of code, I had to change the data frame or variable name to make the code work for the new case. This worked fine for one or two charts, but became very tedious when I had to create many charts. And I often had to make more than 50 charts for a typical client project. Even worse, as my code reservoir piled up, it became painful to find the right piece of code for the kind of customizations I wanted to do. So one day I sat down and wrote ezplot to change it all. Under the hood, all ezplot functions use ggplot2 functions. My goal was not to invent a new plotting system, but to make it very easy to create high quality ggplot2 charts with a few lines of code, requiring the user zero or minimal effort of customization.

Ezplot has made me happier. A plot that used to takes me 30 minutes to make now takes me less than 1 minute. I now use ezplot for all my client projects. I love it, and I think you'll love it too. In this book, I'll show you how to use ezplot with lots of examples. After working through this book, you will be able to efficiently produce these most used statistical charts:

* dot plot
* histogram & density plot
* CDF plotCCDF plot
* box plot
* Q-Q plot
* vertical and horizontal bar chart
* lollipop chart
* likert plot (a.k.a, horizontal diverging bar chart)
* scatter plot
* line plot (rank-order plots and lift charts as special cases)
* dumbbell plot
* heat map
* forest plot

You will get most out of this book by typing and running the code presented in the book. Do NOT just copy and paste them. Type the code. This will also help you become a better R programmer in general. If you run into errors, please email me at gmlang@cabaceo.com.

Good luck and Happy Learning!