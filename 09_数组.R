# 矩阵 matrix 其实就是一个二维数组
# 数组可以是一维或多维
# 类似pytorch的二维以上的张量

# 数组创建使用 array() 函数，该函数使用向量作为输入参数，
# 可以使用 dim 设置数组维度
# array(data = NA, dim = length(data), dimnames = NULL)
# data 向量，数组元素
# dim 数组的维度，默认是一维数组
# dimnames 维度的名称，必须是个列表，默认情况下是不设置名称的

# 创建两个不同长度的向量
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)

# 创建数组
result <- array(c(vector1,vector2),dim = c(3,3,2))
print(result)
























