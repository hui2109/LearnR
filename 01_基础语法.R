mystring <- "Hello, World!"
print(mystring)
print(ls())  # 查看当前环境中的对象

rm(mystring)  # 删除对象
print(ls())

print("RUNOOB")
print(123)
print(3e2)  # 300

# 输出结果的拼接cat(), 在每两个拼接元素之间自动加上空格
cat(1, "加", 1, "等于", 2, '\n')

# 输出内容到文件
# 方法一：cat()
cat("这是一个测试文件", file = "./resource/test.txt")  # 默认是覆盖写入
cat("这是一个测试文件", file = "./resource/test.txt", append = TRUE)  # 追加写入
# 方法二：sink()
# sink() 函数可以把控制台输出的文字直接输出到文件中去
# 这条语句执行以后，任何控制台上的输出都会被写入到文件中去，控制台将不会显示输出
# 默认是覆盖写入
sink("./resource/mysink.txt")
print('sink函数')

# 如果我们依然想保留控制台的输出，可以设置split属性
sink("./resource/mysink.txt", split = TRUE)
print('sink函数split')

# 取消输出到文件
sink()  # 不带参数，取消输出到文件
print('sink函数取消')
print('hhh')

# 测试一下
sink("./resource/r_test.txt", split=TRUE)  # 控制台同样输出
for (i in 1:5)
  print(i)
sink()

# 从文件读取数据
# !!!所读取的文本文件每一行 (包括最后一行) 的结束必须有[换行符]，否则会报错。
readLines("./resource/r_test.txt")

# 查看当前工作目录
print(getwd())

# 设置当前工作目录
setwd(getwd())









