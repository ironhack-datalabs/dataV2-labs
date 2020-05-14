![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | Data Cleaning

## Introduction

We keep seeing a common phrase that 80% of the work of a data scientist is data cleaning. We have no idea whether this number is accurate but a data scientist indeed spends lots of time and effort in collecting, cleaning and preparing the data for analysis. This is because datasets are usually messy and complex in nature. It is a very important ability for a data scientist to refine and restructure datasets into a usable state in order to proceed to the data analysis stage.

In this exercise, you will both practice the data cleaning techniques we discussed in the lesson and learn new techniques by looking up documentations and references. You will work on your own but remember the teaching staff is at your service whenever you encounter problems.

## Getting Started

Now you should already be familar with the workflow of solving and submitting the labs. But in case not, review the guidelines in the `README.md` in the [repo root](../..) and [previous lab](../lab-pandas).

In this lab you will be working on [main.ipynb](your-code/main.ipynb). To launch it, first navigate to the directory that contains `main.ipynb` in Terminal, then execute `jupyter notebook`. In the webpage that is automatically opened, click the `main.ipynb` link to launch it.

When you are on `main.ipynb`, read the instructions for each cell and provide your answers. Make sure to test your answers in each cell and save. Jupyter Notebook should automatically save your work progress. But it's a good idea to periodically save your work manually just in case.

## Goals

Do you remember your MySQL project? In this lab, you will examine some MySQL tables from [here](https://relational.fit.cvut.cz/dataset/Stats). This database contains an anonymized dump of all user-contributed content on the Stats Stack Exchange network.

You will need to import the `pymysql` library and the `create_engine` function from the `sqlalchemy` library.

```python
import pymysql
from sqlalchemy import create_engine
```

Once your connection is established with the database you will use some basic SELECT queries to retrieve the data in order to answer the questions described next.

:bulb: If you receive import errors for `pymysql` or `sqlalchemy`, it means you need to install them with `pip`.

### Challenge Questions

1. Connect to the server and collect all the data from users and posts tables.

2. Create a merged dataframe with users and post tables. **Take into account that you will need to do some stuff before merging.**

3. Identify missing values in the merged dataframe and apply some of the methods.

4. Change the data types of your merged dataset accordingly.

5. Bonus Question: Create a dataframe with the outliers you have identified in the dataframe and export it to a csv file in your-code folder. 

**:exclamation: If you feel you are already good at Python/Pandas and don't need the instructions in `main.ipynb` to walk you through, please feel free to skip `main.ipynb` and create your own solution file.**

## Deliverables

- `main.ipynb` with your responses to each of the questions above.

## Submission

Upon completion, add your deliverables to git. Then commit git, push to your forked repo, and create the pull request as in the previous labs. **REMEMBER

- Upon completion, commit your code and submit to github. **REMEMBER YOU HAVE ALREADY FORKED THE REPO BEFORE**!!

  ```
  git add .
  git commit -m "<lab or project name>"
  git push origin master
  ```

- Navigate to your repo and [create a Pull Request](https://help.github.com/articles/creating-a-pull-request/).
- Create a pull request with title following this format: **"[<your_campus>][<bootcamp_code>] [<lab/project_name>]<your_name>"**
  - For instance, if you are doing data bootcamp in Madrid, your name is Marc Pomar and the lab you are working on is `lab-numpy`, your pull request should be named like this: "[MAD][datamad10108] [lab-numpy] Marc Pomar"
- If you have successfully created the pull request you are done!  CONGRATS :)

## Resources

[Data Cleaning Tutorial](https://www.tutorialspoint.com/python/python_data_cleansing.html)

[Data Cleaning with Numpy and Pandas](https://realpython.com/python-data-cleaning-numpy-pandas/#python-data-cleaning-recap-and-resources)

[Data Cleaning Video](https://www.youtube.com/watch?v=ZOX18HfLHGQ)

[Data Preparation](https://www.kdnuggets.com/2017/06/7-steps-mastering-data-preparation-python.html)

[Google Search](https://www.google.es/search?q=how+to+clean+data+with+python)