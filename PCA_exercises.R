#ex 4.1

#1)
sigma = matrix(c(1,-2,0,-2,5,0,0,0,2), nrow=3, ncol=3)
sigma

eigen(sigma)
#PC1 = -0.38 X1 + 0.92 X2 (+ 0 X3) <- sigma eigenvalues
#assuming the variables are centered
# PC2 = 1 X3
# PC3 = 0.92 X1 + 0.38 X2 (+0 X3)

#2)
TotalVar = sum(eigen(sigma)$values)
TotalVar
PropPC1 = eigen(sigma)$values[1]/TotalVar
PropPC1
PropPC2 = eigen(sigma)$values[2]/TotalVar
PropPC2

#2)
#Cor(PC1, X1) = a11 * sqrt(Var(PC1)/ Var(X1))
c1 = -0.3826834 * sqrt (5.8284271 / 1)
c1
#Cor(PC1, X2) = a21 * sqrt(Var(PC1)/ Var(X2))
c2 = 0.9238795 * sqrt(5.8284271/ 5)
c2

######
# ex 4.5
# 1)
# import foodpriceusa.txt dataset
x = FoodPriceUSA
str(x)
mean = colMeans(x[, -1]); mean #column 1 is city names -> non-numeric
sapply(x[, -1],sd)
# apresentam valores diferentes de média e std

#2) we apply PCA on the correlation matrix because we are working with normalized data
# normalized because they don't have similar values
# the variances of the variance matrix are very different
