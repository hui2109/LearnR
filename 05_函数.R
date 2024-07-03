# 函数
# 函数是一个对象，可以拥有[属性]
# 函数定义使用 function 关键字，形式如下
# function_name <- function(arg_1, arg_2, ...) {
# // 函数体
# 函数返回值使用 return()
# }

myfn <- function (a){
  for (i in 1:a){
    b <- i^2
    print(b)
  }
  return(b)
}

x = myfn(6)
x

# 函数也是一个对象，拥有自己的属性
myfn.xxxxxxxxx <- 'dddddd'
myfn.xxxxxxxxx

# 指定参数名,给函数传递参数
# 创建函数
new.function <- function(a,b,c) {
  result <- a * b + c
  print(result)
}

# 不带参数名
new.function(5,3,11)

# 带参数名
new.function(a = 11, b = 5, c = 3)

# 为参数指定默认值
# 创建带默认参数的函数
new.function <- function(a = 3, b = 6) {
  result <- a * b
  print(result)
}

# 调用函数，但不传递参数，会使用默认的
new.function()

# 调用函数，传递参数
new.function(9,5)






















