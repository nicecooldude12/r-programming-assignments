
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
ABC_poll   <- c(  4,      62,      51,    21,      2,        14,       15)
CBS_poll   <- c( 12,      75,      43,    19,      1,        21,       19)

df_polls <- data.frame(Name, ABC_poll, CBS_poll)

mean(df_polls$ABC_poll)
median(df_polls$CBS_poll)
range(df_polls[, c("ABC_poll","CBS_poll")])

df_polls$Diff <- df_polls$ABC_poll - df_polls$CBS_pol

#R script defining and inspecting df_polls.
class(df_polls)
head(df_polls)
tail(df_polls)
rownames(df)

#Summary statistics calculations in your script.
summary(df_polls$Diff)
summary(ABC_poll)

#ggplot2 bar chart saved and embedded in blog.
library(ggplot2)

ggplot(df_polls, aes(x = Name, y = df_polls$Diff)) +
  geom_col(fill = "green") +
  labs(title = "CBS & ABC Poll Difference",
       x = "Candidate",
       y = "Poll Percentage")