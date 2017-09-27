data = load('ex2data1.txt');
X = data(:, [1, 2]); y = data(:, 3);
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

