#clustering

set.seed(1234)
subject1 = trunc(rnorm(30, 60, 15))
subject1
range(subject1)
marks=data.frame(subject1)
head(marks)

k2=kmeans(marks, centers = 2)
k2
k2$size
marks[k2$cluster==1,]
mean(marks[k2$cluster==1,])
length(marks[k2$cluster==1,])
mean(marks[k2$cluster==2,])
k2$cluster
