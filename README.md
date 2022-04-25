# Data Cleaning Project: Sharks Attacks
<img src="https://bit.ly/2VnXWr2" alt="Ironhack Logo" width="100"/>

*[by Francisco Ponce]*

## Project Content

```
Data cleaning - Project
    ├── README.md
    ├── main.ipynb
    └── clean-dataset.csv
 ```

### Shark Attacks Files

In this project our primary goal was clean the dataset provided by using pandas. We also define some functions along the project. The output is spotted in repository.

_____The activities shown below are not restrictive, just informative. Please take some minutes to review the project on the ```main.ipynb``` for further details._____

1. Data exploration: Here we have an insight of the data set by looking the data types in question, which is the information valuable in this context, etc.
There are many ```NaN``` values in critical fields, such as the Shark species. Our focus is try to maintain this valuable information.

2. Delete duplicated columns and filling ```NaN``` values plan

3. Cleaning and parsing the column ```"Date"```, ```"Injury"```, ```"Fatal (y/n)"```, ```"Ages"```.

4. Droping the column ```"Case Number"```, ```"Year"``` and ```"original order"```.

5. Filling values for ```"Name"``` and ```"Investigator or Source"```.

6. Tiding column ```"Activity"``` by extracting verbs in gerund.

7. Filling values for column ```"Species"```.

8. Assing boolean values fo column ```"Fatal (Y/N)"```.

9. Changing column names and Re-indexing

10. Exporting data frame as .csv file 
