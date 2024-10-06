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

# Show packages in mylib, the list of packages set to be loaded in mylibrary script
sort(mylib)

# If microeco package is needed run line 24 to load it. Otherwise do not load it as it is a BIG package.
# library(microeco)

# List the libraries that are loaded
sort((.packages()))

## Import data
# read the CSV file containing the data
read.csv("data.csv")

# Request to import data and store the data as an object, with a name, in R's brain
dt <- read.csv("data.csv")
