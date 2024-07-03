# 向量
a <- c(1,4,6,7)
b <- c(5,6)
a+b

# 取出向量的某个元素
# 从“1”开始
a[2]
# 负数代表[去掉]第几项，并不会改变向量a的值
a[-1]

# 函数var求方差，sd求标准差
var(b)

# 向量的生成
# c()，或者min:max

# NA 代表的是"缺失"，NULL 代表的是"不存在"。

# which 函数:逻辑型向量处理函数，可以用于筛选我们需要的数据的下标
d <- c(11,23,1,2,12,14)
logic <- d > 12
which(logic)

# 从vector中筛选出>=60且<70的值
vector <- c(10, 40, 78, 64, 53, 62, 69, 70)
print(vector[which(vector >= 60 & vector < 70)])

# all() 用于检查逻辑向量是否全部为 TRUE，any() 用于检查逻辑向量是否含有 TRUE
all(logic)
any(logic)

as.numeric("12") # 将字符串转换为数字
as.character(12.34) # 将数字转换为字符串

# 矩阵
# 矩阵初始化内容是由一个向量来传递的，其次是一个矩阵有几行、有几列
# 向量中的值会一列一列的填充到矩阵中。如果想按行填充，需要指定 byrow 属性：
vector <- c(1, 2, 3, 4, 5, 6)
m <- matrix(vector, 2, 3)
n <- matrix(vector, 2, 3, byrow = TRUE)

# 访问矩阵的元素
n[2,1]  # 访问第二行第一个元素
n[2,]  # 访问第二行所有元素
n[,2]  # 访问第二列元素

# 给矩阵的每一行设定名字
rownames(n) = c('a','b')
# 给矩阵的每一列设定名字
colnames(n) = c('x', 'y', 'z')
n

# apply() 函数可以将矩阵的每一行或每一列当作向量来进行操作：
(A <- matrix(c(1, 3, 2, 4), 2, 2))
apply(A, 1, sum)  # 第二个参数为 1 按行操作，用 sum() 函数
apply(A, 2, sum) # 第二个参数为 2 按列操作









































