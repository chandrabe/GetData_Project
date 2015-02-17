# Getting and Cleaning Data

## Original Data Source

* Original data: [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
* Original description of the dataset: [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Recipe to clean the data and get the tidy dataset

1. Download the data source and unzip it into a folder named ```data```.
2. Place ```run_analysis.R``` in the same folder as the ```data``` folder and set it as your working directory.
3. Run ```source("run_analysis.R")```, then it will generate a file ```UCI_HAR_Tidy.txt``` in your working directory containing the resulting tidy dataset (see ```CodeBook.md``` for details about this dataset).

## Steps performed to produce the tidy dataset

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Libraries Required

```run_analysis.R``` will automatically install and load the required libraries.

It requires:

- ```dplyr``` [http://cran.r-project.org/web/packages/dplyr/index.html](http://cran.r-project.org/web/packages/dplyr/index.html "dplyr on CRAN")
- ```plyr``` [http://cran.r-project.org/web/packages/plyr/index.html](http://cran.r-project.org/web/packages/plyr/index.html "plyr on CRAN")
- ```data.table```  [http://cran.r-project.org/web/packages/data.table/index.html](http://cran.r-project.org/web/packages/data.table/index.html "Data.table on CRAN")
