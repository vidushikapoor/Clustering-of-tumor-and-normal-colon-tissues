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
