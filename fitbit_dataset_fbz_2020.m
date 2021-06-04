%% prepare matlab
clear all
close all
clc 
%% Set up the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 103);

% Specify range and delimiter
opts.DataLines = [96, 194];
opts.Delimiter = ",";

% Specify column names and types
opts.VariableNames = ["ID", "year", "gender", "bmi", "living", "stap_est", "erv_fa_sub1_q", "erv_fa_sub2_q", "erv_fa", "dag_zwa1", "tijd_zwa1_uur", "tijd_zwa1_min", "dag_mat1", "tijd_mat1_uur", "tijd_mat1_min", "dag_wan1", "tijd_wan1_uur", "tijd_wan1_min", "ipaqtot1", "tijd_zit1_uur", "tijd_zit1_min", "attitu_1", "attitu_2", "attitu_tot", "soc_omg_1", "soc_omg_2", "soc_omg_tot", "systeem", "stap_app_1_aantal", "stap_app_2_aantal", "stap_app_3_aantal", "stap_app_4_aantal", "stap_app_5_aantal", "stap_app_6_aantal", "stap_app_7_aantal", "comment_app_1", "comment_app_2", "comment_app_3", "comment_app_4", "comment_app_5", "comment_app_6", "comment_app_7", "stap_om_1_aantal", "stap_om_1_aer", "stap_om_1_afs", "stap_om_1_cal", "stap_om_2_aantal", "stap_om_2_aer", "stap_om_2_afs", "stap_om_2_cal", "stap_om_3_aantal", "stap_om_3_aer", "stap_om_3_afs", "stap_om_3_cal", "stap_om_4_aantal", "stap_om_4_aer", "stap_om_4_afs", "stap_om_4_cal", "stap_om_5_aantal", "stap_om_5_aer", "stap_om_5_afs", "stap_om_5_cal", "stap_om_6_aantal", "stap_om_6_aer", "stap_om_6_afs", "stap_om_6_cal", "stap_om_7_aantal", "stap_om_7_aer", "stap_om_7_afs", "stap_om_7_cal", "reden_1", "reden_2", "reden_3", "reden_4", "reden_5", "reden_6", "reden_7", "locatie_1", "locatie_2", "locatie_3", "locatie_4", "locatie_5", "locatie_6", "locatie_7", "dag_zwa2", "tijd_zwa2_uur", "tijd_zwa2_min", "dag_mat2", "tijd_mat2_uur", "tijd_mat2_min", "dag_wan2", "tijd_wan2_uur", "tijd_wan2_min", "ipaqtot2", "tijd_zit2_uur", "tijd_zit2_min", "wear_1", "wear_2", "wear_3", "wear_4", "wear_5", "wear_6", "wear_7"];
opts.VariableTypes = ["double", "double", "categorical", "double", "categorical", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "categorical", "double", "double", "double", "double", "double", "double", "categorical", "double", "double", "double", "double", "double", "double", "double", "categorical", "categorical", "categorical", "categorical", "categorical", "categorical", "categorical", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "categorical", "categorical", "categorical", "categorical", "categorical", "categorical", "categorical", "categorical", "categorical", "categorical", "categorical", "categorical", "categorical", "categorical", "double", "double", "categorical", "double", "double", "double", "double", "double", "double", "double", "double", "categorical", "categorical", "categorical", "categorical", "categorical", "categorical", "categorical", "categorical"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Specify variable properties
opts = setvaropts(opts, ["gender", "living", "tijd_zit1_min", "systeem", "comment_app_1", "comment_app_2", "comment_app_3", "comment_app_4", "comment_app_5", "comment_app_6", "comment_app_7", "reden_1", "reden_2", "reden_3", "reden_4", "reden_5", "reden_6", "reden_7", "locatie_1", "locatie_2", "locatie_3", "locatie_4", "locatie_5", "locatie_6", "locatie_7", "tijd_zwa2_min", "tijd_zit2_min", "wear_1", "wear_2", "wear_3", "wear_4", "wear_5", "wear_6", "wear_7"], "EmptyFieldRule", "auto");

% Import the data
tbl = readtable("C:\Users\farah\OneDrive\Documenten\Master jaar 1\Q4\Introduction into research engineering\Dataset_farah\Data_IER.csv", opts);

%% Convert to output type
ID = tbl.ID;
year = tbl.year;
gender = tbl.gender;
bmi = tbl.bmi;
living = tbl.living;
stap_est = tbl.stap_est;
dag_wan1 = tbl.dag_wan1;
tijd_wan1_uur = tbl.tijd_wan1_uur;
tijd_wan1_min = tbl.tijd_wan1_min;
tijd_zit1_uur = tbl.tijd_zit1_uur;
tijd_zit1_min = tbl.tijd_zit1_min;
systeem = tbl.systeem;
stap_app_1_aantal = tbl.stap_app_1_aantal;
stap_app_2_aantal = tbl.stap_app_2_aantal;
stap_app_3_aantal = tbl.stap_app_3_aantal;
stap_app_4_aantal = tbl.stap_app_4_aantal;
stap_app_5_aantal = tbl.stap_app_5_aantal;
stap_app_6_aantal = tbl.stap_app_6_aantal;
stap_app_7_aantal = tbl.stap_app_7_aantal;
stap_om_1_aantal = tbl.stap_om_1_aantal;
stap_om_1_aer = tbl.stap_om_1_aer;
stap_om_1_afs = tbl.stap_om_1_afs;
stap_om_1_cal = tbl.stap_om_1_cal;
stap_om_2_aantal = tbl.stap_om_2_aantal;
stap_om_2_aer = tbl.stap_om_2_aer;
stap_om_2_afs = tbl.stap_om_2_afs;
stap_om_2_cal = tbl.stap_om_2_cal;
stap_om_3_aantal = tbl.stap_om_3_aantal;
stap_om_3_aer = tbl.stap_om_3_aer;
stap_om_3_afs = tbl.stap_om_3_afs;
stap_om_3_cal = tbl.stap_om_3_cal;
stap_om_4_aantal = tbl.stap_om_4_aantal;
stap_om_4_aer = tbl.stap_om_4_aer;
stap_om_4_afs = tbl.stap_om_4_afs;
stap_om_4_cal = tbl.stap_om_4_cal;
stap_om_5_aantal = tbl.stap_om_5_aantal;
stap_om_5_aer = tbl.stap_om_5_aer;
stap_om_5_afs = tbl.stap_om_5_afs;
stap_om_5_cal = tbl.stap_om_5_cal;
stap_om_6_aantal = tbl.stap_om_6_aantal;
stap_om_6_aer = tbl.stap_om_6_aer;
stap_om_6_afs = tbl.stap_om_6_afs;
stap_om_6_cal = tbl.stap_om_6_cal;
stap_om_7_aantal = tbl.stap_om_7_aantal;
stap_om_7_aer = tbl.stap_om_7_aer;
stap_om_7_afs = tbl.stap_om_7_afs;
stap_om_7_cal = tbl.stap_om_7_cal;

%% Clear temporary variables
clear opts tbl{:, 10};
%% Mean steps per day omron
M_1_om = mean(stap_om_1_aantal,'omitnan');
M_2_om = mean(stap_om_2_aantal,'omitnan');
M_3_om = mean(stap_om_3_aantal,'omitnan');
M_4_om = mean(stap_om_4_aantal,'omitnan');
M_5_om = mean(stap_om_5_aantal,'omitnan');
M_6_om = mean(stap_om_6_aantal,'omitnan');
M_7_om = mean(stap_om_7_aantal,'omitnan');
M_tot_om = sum(M_1_om+M_2_om+M_3_om+M_4_om+M_5_om+M_6_om+M_7_om);%total steps in 7 days
Mean_week_2020_om= M_tot_om/7;%total mean per day
%% mean steps per day app
M_1_app = mean(stap_app_1_aantal,'omitnan');
M_2_app = mean(stap_app_2_aantal,'omitnan');
M_3_app = mean(stap_app_3_aantal,'omitnan');
M_4_app = mean(stap_app_4_aantal,'omitnan');
M_5_app = mean(stap_app_5_aantal,'omitnan');
M_6_app = mean(stap_app_6_aantal,'omitnan');
M_7_app = mean(stap_app_7_aantal,'omitnan');
M_tot_app = sum(M_1_app+M_2_app+M_3_app+M_4_app+M_5_app+M_6_app+M_7_app);%total steps in 7 days
Mean_week_2020_app = M_tot_app/7; %total mean per day
%% mean distance 
M_1_afs = mean(stap_om_1_afs,'omitnan');
M_2_afs = mean(stap_om_2_afs, 'omitnan');
M_3_afs = mean(stap_om_3_afs, 'omitnan');
M_4_afs = mean(stap_om_4_afs, 'omitnan');
M_5_afs = mean(stap_om_5_afs, 'omitnan');
M_6_afs = mean(stap_om_6_afs, 'omitnan');
M_7_afs = mean(stap_om_7_afs, 'omitnan');
M_tot_afs = sum(M_1_afs+M_2_afs+M_3_afs+M_4_afs+M_5_afs+M_6_afs+M_7_afs);%total steps in 7 days
Mean_week_2020_afs = M_tot_afs/7;%total mean per day
%% Errors app vs. omron
M_om = [stap_om_1_aantal, stap_om_2_aantal, stap_om_3_aantal, stap_om_4_aantal, stap_om_5_aantal, stap_om_6_aantal, stap_om_7_aantal];
M_app = [stap_app_1_aantal, stap_app_2_aantal, stap_app_3_aantal, stap_app_4_aantal, stap_app_5_aantal, stap_app_6_aantal, stap_app_7_aantal];
D = M_om-M_app;
M_D = abs(mean(D,'all', 'omitnan'));
%% other
M_BMI = mean(bmi, 'omitnan');

%% tables
MEAN = [M_tot_om;M_tot_app;Mean_week_2020_om;Mean_week_2020_app;M_BMI]
%% steps per person
total_steps = stap_om_1_aantal+stap_om_2_aantal+stap_om_3_aantal+stap_om_4_aantal+stap_om_5_aantal+stap_om_6_aantal+stap_om_7_aantal;
all_steps = [stap_om_1_aantal,stap_om_2_aantal,stap_om_3_aantal,stap_om_4_aantal,stap_om_5_aantal,stap_om_6_aantal,stap_om_7_aantal];
mean_person = mean(all_steps,2, 'omitnan')
CSV = [total_steps,mean_person,bmi]

%% Statistical analysis
T_om_20=stap_om_1_aantal+stap_om_2_aantal+stap_om_3_aantal+stap_om_4_aantal+stap_om_5_aantal+stap_om_6_aantal+stap_om_7_aantal;
figure
%histogram(T_om) (check distribution)

pd1 = fitdist(T_om_20,'Normal');

% plot of normpdf (uncomment to check)
% x = 0:1000:100000;
% figure
% plot(normpdf(x,27991.1,12707.9))
T_app_20 = stap_app_1_aantal+stap_app_2_aantal+stap_app_3_aantal+stap_app_4_aantal+stap_app_5_aantal+stap_app_6_aantal+stap_app_7_aantal;

%histogram(T_app) (check distribution)

pd2=fitdist(T_app_20,'Normal');

disp('Statistical data Omron')
disp(pd1)

disp('Statistical data App')
disp(pd2)

n2 = length(T_om_20);
%% saving variables for statistical analysis
filename = 'fitbit_dataset_fbz_2020.mat';
save(filename,'T_om_20','T_app_20')

%% plots
M_app_day = [M_1_app,M_2_app,M_3_app,M_4_app,M_5_app,M_6_app,M_7_app];
M_om_day = [M_1_om,M_2_om,M_3_om,M_4_om,M_5_om,M_6_om,M_7_om];
X=1:1:7;
scatter(X,M_app_day,'*','k')
hold on
scatter(X,M_om_day,'o','k')
title('Steps per day, omron vs. app')
xlabel('Day')
ylabel('Average amount of steps per day')

%NOTE: plots of results were made with pgfplots in latex