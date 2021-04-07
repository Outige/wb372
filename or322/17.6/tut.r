P=matrix(c(
    0.2, 0.2, 0.3, 0, 0, 0.3,
    0, 0.1, 0, 0.6, 0.3, 0,
    0, 0, 1, 0, 0, 0,
    0, 0, 0, 1, 0, 0,
    0, 0, 0, 0, 1, 0,
    0, 0, 0, 0, 0, 1
), nrow=6, byrow=TRUE)
colnames(P) = c("<3.", ">=3.", "S50.", "S100.", "S140.", "D.")
rownames(P) = c("<3.", ">=3.", "S50.", "S100.", "S140.", "D.")
# P
# b=P[1:2,]
# b
Q=P[1:2,1:2]
# Q

R=P[1:2,3:6]
# R

# F = (I-Q)^(-1)
F=solve(diag(2)-Q)
# F

# A = (I-Q)^(-1) * R
A=F%*%R
# A

50*A[1,1] + 100*A[1,2] + 140*A[1,3]

# # Q1a
# T_f=sum(F[1,])
# T_f

# # Q1b
# A[1,2]