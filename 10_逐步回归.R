library(tidyverse)
library(caret)
library(leaps)
library(MASS)

# 方法一：
# 加载数据
library(datasets)
data("swiss")
# 查看数据（随机选取3行数据来查看）
sample_n(swiss, 3)

# 建立完全模型
sink('./resource/mysink.txt', split = TRUE)
full.model <- lm(Fertility ~., data = swiss)
summary(full.model)

# 逐步回归
step.model <- stepAIC(full.model, direction = "both", trace = FALSE)
summary(step.model)

# 方法二：
# 设立随机数种子
set.seed(123)
#设置重复的k倍交叉验证，这里设置10折
train.control <- trainControl(method = "cv", number = 10)
# 使用10倍交叉验证来估计5个模型中每个模型的平均预测误差（RMSE）
# 最佳定义为RMSE最小的模型
# 训练模型
step.model <- train(Fertility ~., data = swiss,
                    # "leapBackward"，使线性回归与向后选择相适应
                    # "leapForward"，使线性回归与正向选择相适应
                    # "leapSeq"，逐步选择拟合线性回归
                    method = "leapSeq", 
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
coef(step.model$finalModel, 5)
# 或者，仅使用选定的预测变量来计算线性模型：（两者取其一）
lm(Fertility ~ Agriculture + Education + Catholic + Infant.Mortality, data = swiss)
