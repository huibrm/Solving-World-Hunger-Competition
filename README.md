# a4-starter
## My project Sturcture
My project has three main files: 
### DataPrep.R
This is where I combine individule data with household data. I did this by grouping by household number and counting the number of occupents. I then added the household count to the household data. I exported this data in a csv file and then imported it into Model_Comparison.py

### Model_Comparison.py (notebook)
This is where I imported my data, ran all of my models, then used visiuals to show the relationship between predictions and true values. I also organize and export files for submission. 

###  theMyFunctions.py
This is where all of the functions live that orgainze and sort data. The pipeline that runs my models and the function to export the data as a csv also live here. I call these functions in Model_Comparison. 
