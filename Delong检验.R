library(pROC)
sink('./delong_results.txt', split=TRUE)

# 一
data1 <- read.csv('Pre_Zsocre_PCA_RFE_7_RF_test.csv',header = TRUE)
data2 <- read.csv('Post_Mean_PCC_KW_4_RF_test.csv',header = TRUE)

Pre_Zsocre_PCA_RFE_7_RF_test <- roc(data1$Label,data1$Pred)
Post_Mean_PCC_KW_4_RF_test <- roc(data2$Label,data2$Pred)

roc.test(Pre_Zsocre_PCA_RFE_7_RF_test,Post_Mean_PCC_KW_4_RF_test,method = 'delong')

# 二
data1 <- read.csv('Pre_Zsocre_PCA_RFE_7_RF_val.csv',header = TRUE)
data2 <- read.csv('Post_Mean_PCC_KW_4_RF_val.csv',header = TRUE)

Pre_Zsocre_PCA_RFE_7_RF_val <- roc(data1$Label,data1$Pred)
Post_Mean_PCC_KW_4_RF_val <- roc(data2$Label,data2$Pred)

roc.test(Pre_Zsocre_PCA_RFE_7_RF_val,Post_Mean_PCC_KW_4_RF_val,method = 'delong')

# 三
data1 <- read.csv('Pre_Mean_PCA_Relief_17_AE_test.csv',header = TRUE)
data2 <- read.csv('Post_Zsocre_PCC_KW_8_AE_test.csv',header = TRUE)

Pre_Mean_PCA_Relief_17_AE_test <- roc(data1$Label,data1$Pred)
Post_Zsocre_PCC_KW_8_AE_test <- roc(data2$Label,data2$Pred)

roc.test(Pre_Mean_PCA_Relief_17_AE_test,Post_Zsocre_PCC_KW_8_AE_test,method = 'delong')

# 四
data1 <- read.csv('Pre_Mean_PCA_Relief_17_AE_val.csv',header = TRUE)
data2 <- read.csv('Post_Zsocre_PCC_KW_8_AE_val.csv',header = TRUE)

Pre_Mean_PCA_Relief_17_AE_val <- roc(data1$Label,data1$Pred)
Post_Zsocre_PCC_KW_8_AE_val <- roc(data2$Label,data2$Pred)

roc.test(Pre_Mean_PCA_Relief_17_AE_val,Post_Zsocre_PCC_KW_8_AE_val,method = 'delong')

sink()
