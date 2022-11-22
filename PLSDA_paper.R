require(nipals)

df <- as.data.frame(matrix(runif(n = 20, min = -2, max = 2), nrow = 10))

print(df)

p1 <- nipals(df, center = TRUE, scale = TRUE)

comp1 <- p1$scores[, 1]
print(comp1)
comp2 <- p1$scores[, 2]
print(comp2)
print(p1)



beta1 = asin(p1$loadings[,1]) * 180 / pi
beta2 = asin(p1$loadings[,2]) * 180 / pi
print(beta1)
print(beta2) # pca rotation 

par(mfrow = c(2,2))



# dataset plot
plot(df, pch = c(1,0), cex = 2, col = c("red", "blue"),
        xlab = "variable 1", ylab = 'variable 2')


points(comp1, comp2, pch = c(16,15), cex = 2, col= c("red", "blue"))

abline(p1$loadings[1, 1] / p1$loadings[2, 1])

#lines(x_line, x_line * beta1)
#lines(x_line, x_line * beta2)



# NIPALS PCA scores plot
plot(comp1, comp2, pch = c(1,0), cex = 2, col= c('red', 'blue'))

plot(p1$loadings[, 1], p1$loadings[, 2], pch = c(1, 0),
arrows(x0 = p1$loadings[1, 1], x1 = p1$loadings[1, 2], 
y0 = p1$loadings[2, 1], y1 = p1$loadings[2, 2], 
col = "red", length=0.15, lwd=3),
cex = 2, col = c("red", "blue"))

plot(p1$scores[,1])

print(p1$loadings)