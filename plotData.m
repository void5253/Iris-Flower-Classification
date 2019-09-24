function plotData(X,y)
%% green represents setosa, blue versicolor and magneta virginica

setosa = find(y==1); versicolor = find(y==2); virginica = find(y==3);

figure; hold on; 

plot(X(setosa,1),X(setosa,2),'ko','MarkerFaceColor','g','MarkerSize',7);
plot(X(versicolor,1),X(versicolor,2),'ko','MarkerFaceColor','b','MarkerSize',7);
plot(X(virginica,1),X(virginica,2),'ko','MarkerFaceColor','m','MarkerSize',7);

xlabel('Sepal Length')
ylabel('Sepal Width')
  
legend('Setosa', 'Versicolor', 'Virginica');

hold off;

figure; hold on; 

plot(X(setosa,2),X(setosa,3),'ko','MarkerFaceColor','g','MarkerSize',7);
plot(X(versicolor,2),X(versicolor,3),'ko','MarkerFaceColor','b','MarkerSize',7);
plot(X(virginica,2),X(virginica,3),'ko','MarkerFaceColor','m','MarkerSize',7);

xlabel('Sepal Width')
ylabel('Petal Length')
  
legend('Setosa', 'Versicolor', 'Virginica');

hold off;

figure; hold on; 

plot(X(setosa,3),X(setosa,4),'ko','MarkerFaceColor','g','MarkerSize',7);
plot(X(versicolor,3),X(versicolor,4),'ko','MarkerFaceColor','b','MarkerSize',7);
plot(X(virginica,3),X(virginica,4),'ko','MarkerFaceColor','m','MarkerSize',7);

xlabel('Petal Length')
ylabel('Petal Width')
  
legend('Setosa', 'Versicolor', 'Virginica');

hold off;

figure; hold on; 

plot(X(setosa,1),X(setosa,4),'ko','MarkerFaceColor','g','MarkerSize',7);
plot(X(versicolor,1),X(versicolor,4),'ko','MarkerFaceColor','b','MarkerSize',7);
plot(X(virginica,1),X(virginica,4),'ko','MarkerFaceColor','m','MarkerSize',7);

xlabel('Sepal Length')
ylabel('Petal Width')
  
legend('Setosa', 'Versicolor', 'Virginica');

hold off;

figure; hold on; 

plot(X(setosa,1),X(setosa,3),'ko','MarkerFaceColor','g','MarkerSize',7);
plot(X(versicolor,1),X(versicolor,3),'ko','MarkerFaceColor','b','MarkerSize',7);
plot(X(virginica,1),X(virginica,3),'ko','MarkerFaceColor','m','MarkerSize',7);

xlabel('Sepal Length')
ylabel('Petal Length')
  
legend('Setosa', 'Versicolor', 'Virginica');

hold off;

figure; hold on; 

plot(X(setosa,4),X(setosa,2),'ko','MarkerFaceColor','g','MarkerSize',7);
plot(X(versicolor,4),X(versicolor,2),'ko','MarkerFaceColor','b','MarkerSize',7);
plot(X(virginica,4),X(virginica,2),'ko','MarkerFaceColor','m','MarkerSize',7);

xlabel('Petal Width')
ylabel('Sepal Width')
  
legend('Setosa', 'Versicolor', 'Virginica');

hold off;
  
endfunction
