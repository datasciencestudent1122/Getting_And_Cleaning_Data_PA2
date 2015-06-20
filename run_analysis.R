#Step 1 - read in data

#test data
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
Y_test <- read.table("UCI HAR Dataset/test/y_test.txt")

#train data
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
Y_train <- read.table("UCI HAR Dataset/train/y_train.txt")

#feature.txt
features <- read.table("UCI HAR Dataset/features.txt")

#activity_labels.txt
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")

# Step 2: Merges the training and the test sets to create one data set.

#merge the training data
x_train_merge <- cbind(X_train,subject_train,Y_train)

#merge the test data
x_test_merge <- cbind(X_test,subject_test,Y_test)

#merge the training and test data
x_all_merge <- rbind(x_train_merge,x_test_merge)

#create column names vector
feat_all <- c(as.character(features[,2]),"Subject","Activity")

#name the columns
colnames(x_all_merge) <- feat_all

# Step 3: Extracts only the measurements on the mean and standard deviation for each measurement. 
col_to_extract <- logical()
for (i in 1:length(feat_all)){
  if ((regexpr("mean()",feat_all[i])!=-1) || (regexpr("std()",feat_all[i])!=-1)){
    col_to_extract[i] = TRUE
  }
  else{
    col_to_extract[i] = FALSE
  }
  if (regexpr("meanFreq",feat_all[i])!=-1){
    col_to_extract[i] = FALSE
  }
}

extracted_means_and_std <- x_all_merge[,col_to_extract]

# Step 4: Uses descriptive activity names to name the activities in the data set
all_activity_vals <- x_all_merge[,563]

desc_act_names <- character(length(all_activity_vals))
for (i in 1:length(all_activity_vals)){
  if (all_activity_vals[i]==1){
    desc_act_names[i] = "WALKING2"
  } else if (all_activity_vals[i]==2){
    desc_act_names[i] = "WALKING_UPSTAIRS3"
  } else if (all_activity_vals[i]==3){
    desc_act_names[i] = "WALKING_DOWNSTAIRS4"
  } else if (all_activity_vals[i]==4){
    desc_act_names[i] = "SITTING5"
  } else if (all_activity_vals[i]==5){
    desc_act_names[i] = "STANDING6"
  } else if (all_activity_vals[i]==6){
    desc_act_names[i] = "LAYING"
  }
}

#add these descriptions to the tidy data set in step 3  as the first row
step4_final <- cbind(desc_act_names,extracted_means_and_std)

# Step 5: Appropriately labels the data set with descriptive variable names. 
# THis was completed in an earlier step. See the column names of step4_final.
write.table(step4_final, file = "tidydata.txt", row.name=FALSE)


# Step 6: Not completed due to time-contraints