
W=0.01*randn(100,1);
X=sort(rand(100,1));
Y=6*rand(100,1);
Atrain=ones(100,120);
for j=2:120
    Atrain(:,j)=Atrain(:,j-1).*X;
end
alphaOpt=Atrain\(W+Y);
Ytrain=Atrain*alphaOpt;
plot(X,Y,X,Ytrain)
figure
hist(W,20)
mean(Ytrain-Y)
std(Ytrain-Y)
