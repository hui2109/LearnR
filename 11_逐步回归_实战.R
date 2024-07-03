library(tidyverse)
library(caret)
library(leaps)
library(MASS)
library(readr)

# 方法一：
# 加载数据
my_data <- read_csv('./resource/常规超声统计分析.csv', col_types = list(col_double()))
# 查看数据（随机选取3行数据来查看）
sample_n(my_data, 3)

# 建立完全模型
full.model <- lm(label ~., data = my_data)
summary(full.model)

# 逐步回归
step.model <- stepAIC(full.model, direction = "both", trace = FALSE)
summary(step.model)  # 前长径、前厚径、前PSV、后长径、后造影分级、RI变化率

# 方法二：
# 设立随机数种子
set.seed(123)
#设置重复的k倍交叉验证，这里设置10折
train.control <- trainControl(method = "cv", number = 10)
# 使用10倍交叉验证来估计5个模型中每个模型的平均预测误差（RMSE）
# 最佳定义为RMSE最小的模型
# 训练模型
step.model <- train(label ~., data = my_data,
                    # "leapBackward"，使线性回归与向后选择相适应
                    # "leapForward"，使线性回归与正向选择相适应
                    # "leapSeq"，逐步选择拟合线性回归
                    method = "leapForward", 
                    # nvmax，该参数对应于要纳入模型的最大预测变量数
                    tuneGrid = data.frame(nvmax = 1:5),
                    trControl = train.control)
# RMSE和MAE是两个不同的检测模型质量的指标
# RMSE和MAE越低，模型越好
# Rsquared表示观察到的结果与模型预测的值之间的相关性
# R平方越高，模型越好。
step.model$results

# 显示由train()函数自动选择的最佳调整值
step.model$bestTune

# summary()报告每种模型大小的最佳变量集，直到最佳的？变量模型
# 星号指定给定变量是否包含在相应的模型中
summary(step.model$finalModel)

# 最终模型的回归系数（id = ？）可以按以下方式访问
coef(step.model$finalModel, 3)  
# leapSeq：后造影分级、长径变化率、RI变化率
# leapBackward：前长径、后长径、后造影分级
# leapForward：后造影分级、长径变化率、RI变化率

# 建模
model.Clinic<-glm(label~后造影分级+长径变化率+RI变化率, data = my_data,family=binomial(link='logit'))
summary(model.Clinic)

# 查看模型在训练集的情况
probClinicTrain<-predict.glm(object=model.Clinic, newdata=my_data,type = "response")
predClinicTrain<-ifelse(probClinicTrain>=0.5,1,0)  # 将预测概率大于0.5的视为阳性

# 计算模型精度
error=predClinicTrain-my_data$label
# accuracy:判断正确的数量占总数的比例
accuracy=(nrow(my_data)-sum(abs(error)))/nrow(my_data)

# precision:即真阳性率，真实值预测值全为1 / 预测值全为1 --- 提取出的正确信息条数/提取出的信息条数 
precision=sum(my_data$label & predClinicTrain)/sum(predClinicTrain)

# recall:即敏感度，真实值预测值全为1 / 真实值全为1 --- 提取出的正确信息条数 /样本中的信息条数 
recall=sum(predClinicTrain & my_data$label)/sum(my_data$label)

# P和R指标有时候会出现的矛盾的情况，这样就需要综合考虑他们，最常见的方法就是F-Measure（又称为F-Score）
# F-Measure是Precision和Recall加权调和平均，是一个综合评价指标 
F_measure=2*precision*recall/(precision+recall)

# 输出以上各结果
# precision和recall和F_measure是预测Hgg的值
# 可以模型预测HGG的能力比较强，但是预测Lgg的能力比较弱
print(paste('准确率accuracy:',accuracy))
print(paste('精确率precision:',precision))
print(paste('召回率recall:',recall))
print(paste('F_measure:',F_measure))
# 绘制四格表
table(my_data$label,predClinicTrain)
