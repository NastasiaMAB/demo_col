### Set up R environment

## Set up directory
# !! Only if using R base, run line 6, 9, 12 and 15. Otherwise skip. !!
# Reset R's brain
# rm(list=ls())

# getwd tells where R is currently looking
# getwd()

# setwd tell R where to look. Change 'the_directory' with actual path.
# setwd("/Users/u1566746/Documents/Work/RProject/the_directory")

# use getwd to confirm that R is now looking here
# getwd()

## Load libraries
source("/Users/u1566746/Documents/Work/Rproject/libsource/mylibrary.R")

# Show packages in mylib, the list of packages set to be loaded in the mylibrary 
# script
sort(mylib)

# If microeco package is needed run line 26 to load it. Otherwise do not load it
# as it is a BIG package.
# library(microeco)

# List the libraries that are loaded
sort((.packages()))

## Import data
# read the CSV file containing the data
read.csv("data.csv")

# Request to import data and store the data as an object, with a name, in R's 
# brain
dt <- read.csv("data.csv")

## Store your git repository on GitHub
# Put the repository on GitHub (need "usethis" library)
use_github()

## Make the plot

# Re-order factor "date" by chronological order
dt$date <- factor(dt$date, levels = c("Nov", "Jan", "Feb", "Mar", "May", "Jun", 
                                      "Jul"))
# Make the plot
plot <- ggplot(dt, aes(x = date, y=so, fill = as.factor(co))) + 
  geom_tile(color = "white", linewidth = 0.05) + 
  scale_x_discrete(expand = c(0,0)) + 
  scale_fill_manual(values=c("#CCCCCC", "#FFC425", "#D11141"), 
                    name = "soil sample\nCocci-detection") + 
  theme_classic() + 
  theme(axis.title=element_blank(), axis.ticks=element_blank(), 
        axis.line=element_blank(), legend.title = element_text(size = 8), 
        legend.text = element_text(size = 7), legend.key.size = unit(0.4, "cm"))

# Save the plot
ggsave("/Users/u1566746/Documents/Work/RProject/demo_col/fig.jpeg", plot)


# Don't forget to add the plot in Git index