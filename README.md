# Breast Cancer Classification R Script

This repository contains an R script for performing clustering and classification on breast cancer data. The script uses the Bioconductor package for data analysis and visualization. The main purpose is to demonstrate clustering of breast cancer data based on two attributes: Clump Thickness and Uniformity of Cell Size, as well as clustering on all attributes.

# Introduction
Application of clustering method for analyzing a data set consisting of the expression patterns of different cell types to separate cancerous from non cancerous. The dataset of this project was taken from the article "Broad patterns of gene expression revealed by clustering analysis of tumor and normal colon tissues probed by oligonucleotide arrays". [https://www.ncbi.nlm.nih.gov/pubmed/10359783]

## Getting Started

To run this script, you will need to have R and the required packages installed. Make sure you have the necessary data file, "breast-cancer-wisconsin.csv," in the specified working directory before executing the script.

## Prerequisites

Ensure you have R and the following packages installed:

- `cluster`
- `graphics`

You can install these packages using the following commands in R:

```R
install.packages("cluster")
install.packages("graphics")
source("http://bioconductor.org/biocLite.R")
biocLite("BiocManager")
```

## Usage
- Clone this repository or download the R script file, "breast_cancer_clustering.R."

- Open R or RStudio and set the working directory to the location where the R script is located using the setwd() function.

- Run the script to perform clustering and visualize the results.

## Description of the Script
- Bioconductor package: The script starts by loading the necessary Bioconductor package using source("http://bioconductor.org/biocLite.R").

- Set working directory: The working directory is set to the folder containing the breast cancer data using setwd().

- Read the data: The script reads the breast cancer data from the "breast-cancer-wisconsin.csv" file and stores it in the data variable. The head() function is used to display the first few rows of the data.

- Clustering on Two Attributes: The script performs clustering on two attributes, namely "Clump.thickness" and "Uniformity.of.Cell.Size," using the k-means algorithm with two centers and ten random starts (kmeans() function). The results are stored in the BM variable, and the cluster assignments are displayed using data.frame().

- Graphical Representation: The script generates a scatter plot to visualize the clustering results based on "Clump Thickness" and "Uniformity of Cell Size." The plot() function is used to create the scatter plot, and cluster assignments are labeled using the text() function.

- Cluster Representation: The cluster package is used to create a cluster plot (clusplot()) to visualize the clustering results based on the two attributes.

- Computing Euclidean Distances: The script calculates the Euclidean distances between data points using the dist() function and creates an image representation of the distance matrix using image().

- Clustering on All Attributes: The script performs clustering on all attributes of the breast cancer data using the k-means algorithm, similar to the previous step. The results are stored in the BMAll variable, and cluster assignments are displayed using data.frame().

- Cluster Representation: The clusplot() function is used again to create a cluster plot to visualize the clustering results based on all attributes.

## License
This project is licensed under the MIT License, allowing you to use, modify, and distribute the code freely.

Feel free to reach out for any questions or improvements! Happy clustering!
