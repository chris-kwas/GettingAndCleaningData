# Getting and Cleaning Data Course Project
Repo for Getting and Cleaning Data Course Project

You'll find in this repo two other files, run_analysis.R and Cookbook.md

Cookbook.md describes the data set produced by run_analysis.R

run_analysis.R is designed to "tidy up" the data found at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

run_analysis.R assumes that the data has been downloaded and uncompressed into it's working directory.

Running run_analysis.R will have the following effect:

load the list of features available
load up the "train" dataset, and then rename the columns with the descriptive names found in the list of features
select only the data columns  that represents means and standard deviations into a new dataset
load up the corresponding subject file, and then merge this with the modified "train" data set
repeat the following steps on the "test" dataset
merge the modified "train" and "test" datasets and write to a local file called "mergedSet.txt"

Finally a summary of the merged dataset will be created, and written to a local file called "tidyData.txt"

Details on this data can be found in Cookbook.md

