%% prepare matlab
close all
clear all
clc
%NOTE: First run both fitbit_dataset_fbz files!!

%% load files from 2019 and 2020 files
load('fitbit_dataset_fbz_2019','T_om_19','T_app_19')
load('fitbit_dataset_fbz_2020','T_om_20','T_app_20')
%% Confidence interval and P-value
%stat. data 2019 for the omron and app
SD_2019_om = 14960.1;
mu_2019_om = 47048.7;

SD_2019_app = 19148.4;
mu_2019_app = 49811.9;

%stat_data 2020 for omron and app
SD_2020_om = 12707.9;
mu_2020_om = 27991.1;

SD_2020_app = 12081.5;
mu_2020_app = 29670.1;

n1 = 94; %amount of samples in 2019
n2= 99; %amount of samples in 2020

SED_om = sqrt((SD_2019_om^2)/n1+(SD_2020_om^2)/n2);
SED_app = sqrt((SD_2019_app^2)/n1+(SD_2020_app^2)/n2);

%confidence interval omron
mean_diff_om=mu_2019_om-mu_2020_om;
CI_om_plus = (mu_2019_om-mu_2020_om)+2*SED_om;
CI_om_min = (mu_2019_om-mu_2020_om)-2*SED_om;

%confidence interval app
mean_diff_app= mu_2019_app-mu_2020_app;
CI_app_plus = (mu_2019_app-mu_2020_app)+2*SED_app;
CI_app_min = (mu_2019_app-mu_2020_app)-2*SED_app;

CI_om=[CI_om_min,CI_om_plus];
CI_app=[CI_app_min,CI_app_plus];

disp('Difference Omron (CI 95%)')
disp(CI_om)
disp('Difference App (CI 95%)')
disp(CI_app)

% t-test
[h,p,ci,stats] = ttest2(T_om_19,T_om_20)
[h,p,ci,stats] = ttest2(T_app_19,T_app_20)