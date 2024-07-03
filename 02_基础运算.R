# 赋值
a <- 123
b <- 455
print(a+b)

# 整除
c <- 123
d <- 4
print(c %/% d)

# 整除求余
print(c %% d)

# 逻辑运算符
v <- c(3,1,TRUE,2+3i)
t <- c(4,1,FALSE,5+6i)
print(v & t)
print(v | t)
print(!v)

# &&、||只对第一个元素进行比较
print(1>0 && 2<0)
print(1>0 || 2<0)

# 冒号运算符，用于创建一系列数字的向量
# %in%，用于判断元素是否在向量里，返回布尔值，有的话返回 TRUE，没有返回 FALSE
# %*%，用于矩阵与它转置的矩阵相乘

# 1到10的向量
v <- 1:10
print(v)

# 判断数字是否在向量v中
v1 <- -1
v2 <- 6
v3 <- 11
print(v1 %in% v)
print(v2 %in% v)
print(v3 %in% v)

# 矩阵与它转置的矩阵相乘
M = matrix(c(2,6,5,1,10,4), nrow = 2, ncol = 3, byrow = TRUE)
t = M %*% t(M)  # t代表转置
print(t)
















