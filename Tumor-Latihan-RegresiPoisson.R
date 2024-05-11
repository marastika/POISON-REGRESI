#
library(readxl)
data_rpoisson <- read_excel("E:\\TUGAS DATA STATISTIK DATA LANJUT\\Tumor-Latihan-RegresiPoisson.XLSX)
summary(data_rpoisson)

model_poisson<-glm(data_rpoisson$Penyandang_tumor~data_rpoisson$Cigaret,family="poisson")
summary(model_poisson)
#
model_poisson$fitted.values
model_poisson$residuals
hist(model_poisson$residuals)
#
library(nortest)
ad.test(model_poisson$residuals)
shapiro.test(model_poisson$residuals)
