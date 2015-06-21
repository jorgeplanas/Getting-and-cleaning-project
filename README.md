# Getting-and-cleaning-project
Course Project Repository for the Getting and Cleaning Course of the Data Science Specialization

The original data is divided in Test and Train observations, and each of these is divided in three files: subjects, activities and measurements. The run_analysis.R script integrates the different original files (subjects, activities and values of the Test and Train Observations) in one dataframe, selects the variables with mean and standard deviation measurements, and gives descriptive names to the activities and to the variables, in order to follow the tidy data principles. Finally, the original variables have been summarised in a new file AVEdata.txt, so the values represent an aggregate mean for each subject and specific activity.

The data can be read into R with read.table(header=TRUE) 

To run the script you need to place the original data files (X_test.txt, X_train.txt, subject_test.txt, subject_train.txt, Y_test.txt, Y_train.txt), which can be downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) in a folder called projdata in your R working directory (or modify the route to the files in Step 1 of the R script).

You can find a more detailed description of the original data, the transformations and the resulting dataframe and its variables in the CODEBOOK.md file

 
