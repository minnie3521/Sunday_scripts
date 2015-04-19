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
