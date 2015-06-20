---
title: "Codebook"
author: "Steven Hellstern"
date: "Saturday, June 20, 2015"
output: html_document
---

## DATA AND VARIABLES

Eight Data files used in analysis:       
       
Two files relevant to both train and test sets:     
1. activity_labels.txt       
      - contains the labels for the six activities the participants were asked to perform while wearing the smart phone.       
2. features.txt        
      - contains the names of the measured variables during the experiment. There are 561.           

Three files pretaining to only train set:       
1. subject_train.txt        
      - contains the experiment particapant id. In the form of a variable from 1 to 30 because 30 people were used in the experiment.       
2. X_train.txt      
    - contains the measuresments on all variables for all activities for the members of the train group.       
3. y_train.txt        
  - contain the activity label in the form of an integer from 1 to 6 for all measurements. Converted to string representation using the infomation contained in activity_labels.txt.          


Three files pretaining to only test set:       
1. subject_test.txt        
      - contains the experiment particapant id. In the form of a variable from 1 to 30 because 30 people were used in the experiment.       
2. X_test.txt      
    - contains the measuresments on all variables for all activities for the members of the test group.       
3. y_test.txt        
  - contain the activity label in the form of an integer from 1 to 6 for all measurements. Converted to string representation using the infomation contained in activity_labels.txt.     

## TRANSFORMATIONS
The data are combined by merging all of the training data column-wise, merging all of the test data column-wise, and then merging the merged training and test data row-wise. Lastly, the columns are named.          

Then relevant information is extracted as asked for by the problem statement.          






