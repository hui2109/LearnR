# 列表是 R 语言的对象集合，
# 可以用来保存不同类型的数据，
# 可以是数字、字符串、向量、另一个列表、矩阵、函数

m <- matrix(c(1,2,3,4,5,6), 2, 3)
fn <- function (a){
  return(a)
}
list_data <- list(13, "runoob", c(11,22,33), list(123, 51.23, 119.1), m, fn)
print(list_data)

# 可以使用 names() 函数给列表的元素命名
names(list_data) <- c('x','y','z','g','h','k')
print(list_data)

# 列表中的元素可以使用索引来访问，
# 如果使用来 names() 函数命名后，我们还可以使用对应名字来访问
print(list_data[1:3])
list_data$g

# 对列表进行添加、删除、更新
# 添加元素
list_data[7] <- 'ddddd'
list_data

# 删除元素
list_data[7] <- NULL
list_data

# 更新元素
list_data$y <- 'gggggg'
list_data

# 可以使用 c() 函数将多个列表合并为一个列表
# 创建两个列表
list1 <- list(1,2,3)
list2 <- list("Google","Runoob","Taobao")

# 合并列表
merged.list <- c(list1,list2)

# 显示合并后的列表
print(merged.list)

# 可以使用 unlist() 函数，将列表转换为向量
# 创建列表
list1 <- list(1:5)
print(list1)

list2 <-list(10:14)
print(list2)

# 转换为向量
v1 <- unlist(list1)
v2 <- unlist(list2)
print(v1)
print(v2)

# 两个向量相加
result <- v1+v2
print(result)












































