# Ex. 3.4

meanx1 <- c(-1,-1); Meanx1
meanx2 <- c(2,1); Meanx2

Sp = matrix(c(7.3,-1.1,-1.1,4.8), nrow=2); Sp
solve(Sp)

# Fisher's discriminant function

t(Meanx1 - Meanx2) %*% solve(Sp)

# Second term in the condition that defines Fisher's rule:

t(Meanx1 - Meanx2) %*% solve(Sp) %*% (Meanx1 + Meanx2)/2


# Ex. 2.4
# Var(X)
sig = matrix(c(4,-2,-2,2), nrow=2); sig
 
-2*log(sqrt(det(sig)) * 0.03 *2* pi, base = exp(1))

# Eigenvalues of Sigma
# solve(x) return inverse matrix x^-1
eigen(solve(sig))

# Ex. 0.5 d)b)
pchisq(20,3,lower.tail = FALSE)
