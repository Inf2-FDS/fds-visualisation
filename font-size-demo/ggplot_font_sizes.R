library(ggplot2)

## Load the data

## L. A. Wauters and A. A. Dhondt, Variation in length and body weight
## of the red squirrel (Sciurus vulgaris) in two different habitats,
## J. Zool. 217 (1989), 93–106, DOI:
## 10.1111/j.1469-7998.1989.tb02477.x.
dat <- read.csv("squirrel-clean.csv")

# This code creates a visualisation that has a true font size of 10pt
# when fit into a document with a text width of 6in

ggplot(dat, aes(x=factor(Year), y=Weight..g., color=factor(Sex, levels=c("M", "F")))) +
  geom_boxplot() +
  ggtitle("Distribution of weights of male and female squirrels in\n1985 and 1986 measured by Wauters and Dhondt (1989)") +
  xlab("Year") + ylab("Weight (g)") +
  guides(color=guide_legend(title="Sex")) +
  theme(text=element_text(size=10,  family="sans"), axis.text=element_text(size=10))
ggsave("ggplot-6x3.pdf", device=pdf, width=6, height=3, units="in")
ggsave("ggplot-6x3.png", device=pdf, width=6, height=3, units="in")




