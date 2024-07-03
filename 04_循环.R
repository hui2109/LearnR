# repeat { 
# // 相关代码 
# if(condition) {
#   break
# }
# }

v <- c("Google","Runoob")
cnt <- 2

repeat {
  print(v)
  cnt <- cnt+1
  
  if(cnt > 5) {
    break
  }
}

# while(condition)
# {
#   statement(s);
# }
v <- c("Google","Runoob")
cnt <- 2

while (cnt < 7) {
  print(v)
  cnt = cnt + 1
}

# R 语言的 for 循环特别灵活，
# 不仅可以循环[整数变量]，还可以对[字符向量]，[逻辑向量]，[列表]等数据类型进行迭代
(v <- LETTERS[1:4])
for (letter in v){
  print(letter)
}

# break 语句插入在循环体中，用于退出当前循环或语句，并开始脚本执行紧接着的语句
# next 语句用于跳过当前循环，开始下一次循环（类似其他语言的 continue）




