%Iris Flower Classification using Logistic Regression

%% Initialization
clear; close all; clc

%% Load pkg and data
c = load('IRIS-training.mat');
X = c(:,1:4);
y = c(:,5);

%% ================ Plotting Data =================

plotData(X,y);
pause;

%% ================== Training ====================

lambda = 25;
[all_theta] = oneVsAll(X,y,3,lambda);
pause;

%% ================= Accuracy ==================

T = load('IRIS-testing.mat');
X = T(:,1:4);
y= T(:,5);

pred = predictOneVsAll(all_theta, X);
fprintf('\nTraining Set Accuracy: %f\n', mean(double(pred == y)) * 100);
