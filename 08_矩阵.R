# R 语言的矩阵可以使用 matrix() 函数来创建，语法格式如下：
# matrix(data = NA, nrow = 1, ncol = 1, byrow = FALSE,dimnames = NULL)
# data 向量，矩阵的数据
# nrow 行数
# ncol 列数
# byrow 逻辑值，为 FALSE 按列排列，为 TRUE 按行排列
# dimname 设置行和列的名称

# byrow 为 TRUE 元素按行排列
M <- matrix(c(3:14), nrow = 4, byrow = TRUE)
print(M)

# 定义行和列的名称
rownames = c("row1", "row2", "row3", "row4")
colnames = c("col1", "col2", "col3")

P <- matrix(c(3:14), nrow = 4, byrow = TRUE, dimnames = list(rownames, colnames))
print(P)

# t() 函数，可以实现矩阵的行列互换
# 创建一个 2 行 3 列的矩阵
M = matrix( c(2,6,5,1,10,4), nrow = 2,ncol = 3,byrow = TRUE)
print(M)
# 转换为 3 行 2 列的矩阵
print(t(M))



















