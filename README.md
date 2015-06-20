---
title: "README"
author: "Steven Hellstern"
date: "Saturday, June 20, 2015"
output: html_document
---

There are 12 relevant files for this submission.             
1.        This file, which describes how all of the files and scripts are used and connected.            
2-9.      There are eight data files used. They are described in Codebook.md.           
10.       Codebook.md - describes the eight data files used.     
11.       run_analysis.R - performs the loading, merging, and extracting the of the data.        
12.       tidydata.txt - the file produced from running file 11. Contains the tidydata.txt requested by the problem.      
 
How run_analysis.txt works.
1. The data are loaded into R.     
2. The data are combined by first merging all of the training data column-wise.    
3. Next comes merging all of the test data column-wise.    
4. Then all of the training and test data are merged row-wise.         
5. Lastly, the columns are named.                

Then relevant information is extracted as asked for by the problem statement.             
