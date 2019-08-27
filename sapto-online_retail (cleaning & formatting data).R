# Title       : Data Cleaning & Data Formatting Online_Retail
# Data source : https://archive.ics.uci.edu/ml/datasets/online+retail 
# Author      : Sapto Adi Nugroho

# Langkah 1. Read data
data <- read.csv("C:/Users/Sapto Nugroho/Downloads/dataset/machinelearning-master/dataset/online_retail_clean.csv")

# Langkah 2. load library
library(tidyverse)
library(lubridate)
library(DataExplorer)
library(scales)

# Langkah 3. preview data
head(data)

# Langkah 4. Summary data
summary(data)

# Langkah 5. Plot missing data
plot_missing(data)

# Langkah 6. Cek variable data
str(data)
plot_str(data)

#Dari hasil tersebut bahwa perlu melakukan konversi tipe data Recency ke Integer untuk menghitung jumlah satuan hari;
# Dan mengkonversi tipe data Monetery ke tipe data currency dollar

# Langkah 7. Konversi tipe data Recency dari Numeric ke Integer
data$recency <- as.integer(21,22,21)
str(data$recency)

#Langkah 8. Konversi tipe data monetery dari Numeric ke Currency dollar
sprintf("$ %3.2f", data$monetary)
str(data)