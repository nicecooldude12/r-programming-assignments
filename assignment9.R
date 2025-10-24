library(ggplot2)

DatasetName <- mtcars
head(DatasetName)

# Scatter plot
plot(DatasetName$wt, DatasetName$mpg,
     main   = "Base: x vs. y",
     xlab   = "x",
     ylab   = "y")

# Histogram
hist(DatasetName$,
     main   = "Base: Distribution of z",
     xlab   = "z")





library(lattice)

# Conditional scatter plot (small multiples)
xyplot(mpg ~ hp | factor(cyl),
       data = DatasetName,
       main = "Lattice: y vs. x by group")

# Box-and-whisker plot
bwplot(mpg ~ factor(gear),
       data = DatasetName,
       main = "Lattice: z by category")




library(ggplot2)

# Scatter plot with smoothing
ggplot(DatasetName, aes(x = disp, y = mpg, color = factor(cyl))) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(title = "ggplot2: y vs. x with trend by group")

# Faceted histogram
ggplot(DatasetName, aes(mpg)) +
  geom_histogram(binwidth = 1) +
  facet_wrap(~ cyl) +
  labs(title = "ggplot2: z distribution by category")