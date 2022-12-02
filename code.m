clc,clear
basedir = './';

%Step 1: load rawdata
rawdata=xlsread('example.xlsx');

%Step 2: calculate the Advice_deviance of ignored and chosen trials
%Extract the Advice_deviance of ignored trials
%Trial_ignore: choice is 0;
Ad_ignore = rawdata(find(rawdata(:,5) == 0),4);
%Extract the Advice_deviance of chosen trials
%Trial_chosen: choice is 1;
Ad_chosen = rawdata(find(rawdata(:,5) == 1),4);

%Step 3: calculate the beta_selection
Mean_Ad_ignore = mean(Ad_ignore);%0.08
Mean_Ad_chosen = mean(Ad_chosen);%-0.30
beta_selection = (Mean_Ad_ignore - Mean_Ad_chosen)/(-1);% beta_selection is -0.38, which means competitive strategy

%advisers who report higher confidence when ignored by the advisees and report lower confidence when chosen by the advisees 


