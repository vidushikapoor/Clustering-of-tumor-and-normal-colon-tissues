# R-Code for 

#Bioconductor package
source("http://bioconductor.org/biocLite.R")

#Set working directory
setwd("/Users/vidushikapoor/Documents/3 sem Bioinfo/Statistics/CancerClassification")

#Read in  the data
data<-read.csv("breast-cancer-wisconsin.csv")
head(data)

set.seed(123456789)

#Clustering on two attributes: Clump Thickness and Uniformity of Cell Size
BM<-kmeans(data[,c("Clump.thickness","Uniformity.of.Cell.Size")],centers=2, nstart=10)
head(BM)

# Cluster assignments
assignment=order(BM$cluster)
data.frame(data$Id.number[assignment],BM$cluster[assignment])

#Graphical Representation
plot(data$Clump.thickness, data$Uniformity.of.Cell.Size,xlim=c(1,10), ylim=c(1,10),xlab="Clump Thickness", ylab="Uniformity of Cell Size")
text(x=data$Clump.thickness, y=data$Uniformity.of.Cell.Size, labels=data$Id.number,col=data$cluster+1)

#Cluster Representation
library(cluster)
clusplot(data[,-1], BM$cluster, main='Cluster Representation', color=TRUE, shade=TRUE, labels=2)

# computing euclidean distances
dist.euclidean <- dist(t(data[,-1]), method = "euclidean")
image(as.matrix(dist.euclidean))

#Clustering on all attributes
set.seed(123456789)
BMAll <- kmeans(data[,-1], centers=2, nstart=10)
assign=order(BMAll$cluster)
data.frame(data$Id.number[assign],BMAll$cluster[assign])

#Cluster Representation
clusplot(data[,-1], BMAll$cluster, main='Cluster Representation', color=TRUE, shade=TRUE)




