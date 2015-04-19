# This is a script to explore the gapminder dataset using R
# Athena Meyer
# minnie3521@gmail.com
# April 19, 2015

# Install dplyr package and dependencies
install.packages("dplyr", dependencies = TRUE)

#Load dplyr library into working environment
library("dplyr")

# Read in data as tab-delimited
gap.in <- read.table("output/combined_gapMinder.tsv", 
                     sep = "\t", 
                     header = TRUE)

gap.in %>%
  filter(country == "China") %>%
  select(country, year, pop) %>%
  group_by(country) %>%
  summarize(min = min(pop))

# China
# Calculate the mean population per continent per year across for years prior to 1990

gap.in %>%
  filter(year < 1990) %>%
  select(continent, country, year, pop) %>%
  group_by(continent, year) %>%
  summarize(mean = mean(pop)) -> data.out

# Add iris data frame to environment
data(iris)
attach(iris)

# Install tidyr package
 install.packages("tidyr", dependencies = TRUE)

# load tidyr package
library("tidyr")

# Turn iris dataset from wide into long format
iris.long <- gather(iris, "Measurement", "Value", 1:4)



  