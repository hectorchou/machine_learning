data = load('ex2data1.txt');
X = data(:, [1, 2]); y = data(:, 3);
pos=find(y==1)
plotData_new_pdf(X,y);
