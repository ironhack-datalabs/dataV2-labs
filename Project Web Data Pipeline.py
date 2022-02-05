# %%
import numpy as np 
import pandas as pd
import matplotlib.pyplot as plt 

# %%
data = pd.read_csv('vehicles/shark_attacks.csv',)

# %%
def new_dataframe(dt):

    new_names = [
        'Case_Number','Date','Year','Type',
        'Country','Area',
        'Location','Activity','Name',
        'Gender','...','Pons','Investigator or Source','pdf',
        'Species','href','Case_1','Case_2','Original_order','un22','un23','extra','extra2','extra3']

    dt = dt.set_axis([new_names], axis=1, inplace=False)
    dt = dt[['Year','Type','Area','Gender','Species']]
    dt = dt.dropna(axis = 0, how = 'all')
    data_names = ['Year','Type','Area','Gender','Species']
    dt.columns = data_names
    

    
    return dt

data = new_dataframe(data)

# %%
def handle_NAN(dt):
    
    dt['Year'] = dt['Year'].fillna(0)
    dt['Year'] = dt['Year'].astype(int)
    dt['Species'] = dt['Species'].fillna('Unidentified Species')
    dt['Area'] = dt['Area'].fillna('Non-Registered Area')
    dt['Gender'] = dt['Gender'].fillna('Unrecorded Gender')
    dt['Type'] = dt['Type'].fillna('Arbitrary incident')
    
    return dt


data = handle_NAN(data)

# %%
def replace_values(dt):
    
    dt = dt.replace(to_replace ="M", value ="Male")
    dt = dt.replace(to_replace ="F", value ="Female")
    dt = dt.replace(to_replace ="Invalid", value ="Arbitrary incident")
    dt = dt.replace(to_replace = 0, value ="Unreported Year")
    indice = data[data['Species'].str.contains('Invalid')].index
    dt = dt.drop(index=indice)
    

    return dt

data = replace_values(data)

# %%
values = dict(data['Species'].value_counts())
number_of_sightings = list(values.values())
y = list(values.keys())

def pie_chart(ns,val):
    sharks = []
    def convertTuple(tup):
        str = ''
        for item in tup:
            str = str + item
        return str
    
    for value in val:
        item = convertTuple(value) 
        sharks.append(item)
    
    fig = plt.figure(figsize =(200, 150))
    plt.pie(ns, labels = sharks)

    return plt.show()

pie_chart(number_of_sightings,y)

# %%
def cleaned_data_csv(dt):
    dt.to_csv('Cleaned_sharks.csv')
    
cleaned_data_csv(data)

# %%



