# IER
Updated version was uploaded 3/6/21


Both files read the Data_IER.csv file, one reads the data of participants in 2019, one of 2020.
For question, please send an e-mail to f.bziker@student.tudelft.nl

## Methodological information

First year student of the EUR were given an omron device for one week in 2019 (prior to covid-19 lockdown) and 2020. With this device, the amount of steps taken per student per day were monitored. 
For the purpose of this study, matlab version 2020b is used.
The function used in matlab is 'mean'.


## Data_IER.csv
Contains the original data. Comma seperated file.

## Fitbit_dataset_fbz_2019 and Fitbit_dataset_fbz_2020
Both files read the Data_IER.csv file, one reads the data of participants in 2019, one of 2020. Plots were not created in matlab, but vectors were copied to latex and plots were made with pgfplots. 
Mean were calculated for both years. 
Contains:
M_i_om = mean amount of steps per day measured by omron
M_tot_om = total amount of average steps per day as measured by the omron
Mean_week_2019_om = mean amount of steps taken per day over the whole week in 2019 as measured by the omron
Mean_week_2020_om = mean amount of steps taken per day over the whole week in 2020 '' '' 

M_i_app = mean amount of steps per day measured by the app
M_tot_app = total amount of average steps per day as measured by the app
Mean_week_2019_app = mean amount of steps taken per day over the whole week in 2019 as measured by the app
Mean_week_2020_app = mean amount of steps taken per day over the whole week in 2020

M_i_afs = mean distance walked per day measured by omron
M_tot_afs = total mean distance walked in one week '' ''
Mean_week_2019_om = mean distance per day over the whole week in 2019
Mean_week_2020_om = mean           ''                      '' in 2020

D = deviation between measured steps of omron vs. the app

## Running the code
Make sure that in line 23 of both scripts 'tbl =' refers to the directory were Data_IER.csv is saved.
