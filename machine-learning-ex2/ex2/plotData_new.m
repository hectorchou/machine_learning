function plotData_new(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.
figure;hold on;
% Create New Figure


% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%
len_y=length(y);
n=0;
m=0;
for i=1:len_y:1
    if y(i)==0
        n=n+1;
    else
        m=m+1;
    end
end
data_x1=zeros(n,1);
data_y1=zeros(n,1);
data_x2=zeros(m,1);
data_y2=zeros(m,1);
j=0;
k=0;
for i=1:length(y)
      if y(i,1)==0
          data_x1(j+1,1)=X(i,1);
          data_y1(j+1,1)=X(i,2);
          j=j+1;
      else
          data_x2(k+1,1)=X(i,1);
          data_y2(k+1,1)=X(i,2);
          k=k+1;
      end
end
plot(data_x1,data_y1,'ko');
hold on;
plot(data_x2,data_y2,'k+');






% =========================================================================



hold off;

end
