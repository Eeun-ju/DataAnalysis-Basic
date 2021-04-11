library(randomForest)
#install.packages('randomForest')
idx = sample(2,nrow(iris),replace=TRUE,prob=c(0.7,0.3))
train.data = iris[idx==2,]
test.data = iris[idx==1,]
r.f = randomForest(Species~.,data=train.data,ntree=100,proximity=TRUE)

table(predict(r.f),train.data$Species)
#그래프 그리기
plot(r.f)
#지니지수 확인
varImpPlot(r.f)

pre.rf = predict(r.f,newdata = test.data)
table(pre.rf,test.data$Species)
plot(margin(r.f,test.data$Species))
