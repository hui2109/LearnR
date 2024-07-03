# paste() 函数用于使用指定对分隔符来对字符串进行连接，默认对分隔符为空格
# paste(..., sep = " ", collapse = NULL)
# ... ： 字符串列表
# sep ： 分隔符，默认为空格
# collapse ： 两个或者更多字符串对象根据元素对应关系拼接到一起，
# 在字符串进行连接后，再使用 collapse 指定的连接符进行连接
a <- "Google"
b <- 'Runoob'
c <- "Taobao"

print(paste(a,b,c))

print(paste(a,b,c, sep = "-"))
letters
LETTERS
print(paste(letters[1:6],1:6, sep = "", collapse = "="))
paste(letters[1:6],1:6, collapse = ".")

# nchar() 函数用于计数字符串或数字列表的长度
result <- nchar("Google Runoob Taobao")
print(result)







































