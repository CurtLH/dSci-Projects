
# load packages
packages <- c("purrr", "doMC", "ggplot2", "caret", "pROC", "ROCR")
purrr::walk(packages, library, character.only = TRUE, warn.conflicts = FALSE)

# set default plot size
options(repr.plot.width=10, repr.plot.height=6)

# configure multicore processing
registerDoMC(cores=8)

# load the data from the MASS package
df <- read.csv("universal_bank.csv")

# convert variables to factors as needed
cols <- c("ZIP", "Education", "SecuritiesAccount", "CDAccount", "Online", "CreditCard", "PersonalLoan")
df[cols] <- lapply(df[cols], factor)

# create names for the class variable
levels(df$PersonalLoan) <- make.names(c("No", "Yes"))

# show a sample of the data
head(df)

# show the structure of the data
str(df)

# split data into training and test
trainIndex <- createDataPartition(df$PersonalLoan, p = .7, 
                                  list = FALSE, 
                                  times = 1)

train <- df[ trainIndex,]
test  <- df[-trainIndex,]

# look at class proportions between training and test data
cat("Proportion of PersonalLoan in training data:")
prop.table(table(train$PersonalLoan))

cat("\nProportion of PersonLoan in test data:")
prop.table(table(test$PersonalLoan))

fit_ctrl <- trainControl(method = "repeatedcv", 
                         repeats = 5,
                         classProbs = TRUE,
                         summaryFunction = twoClassSummary)

set.seed(1234)
rpart_fit <- train(PersonalLoan ~ ., 
                   data = train,
                   method = "rpart",
                   metric = "ROC",
                   trControl = fit_ctrl,
                   na.action = na.exclude)

rpart_fit

rpart_pred <- predict(rpart_fit, test, type = "prob")
rpart_pred$pred <- factor(ifelse(rpart_pred$Yes >= .5, "Yes", "No"))
rpart_pred <- cbind(rpart_pred, actual = test$PersonalLoan)

confusionMatrix(data = rpart_pred$pred, 
                reference = rpart_pred$actual, 
                positive = levels(test$PersonalLoan)[2])

set.seed(1234)
treebag_fit <- train(PersonalLoan ~ ., 
                     data = train,
                     method = "treebag",
                     nbagg = 100,
                     metric = "ROC",
                     trControl = fit_ctrl, 
                     na.action=na.exclude)

treebag_fit

treebag_pred <- predict(treebag_fit, test, type = "prob")
treebag_pred$pred <- factor(ifelse(treebag_pred$Yes >= .5, "Yes", "No"))
treebag_pred <- cbind(treebag_pred, actual = test$PersonalLoan)

confusionMatrix(data = treebag_pred$pred, 
                reference = treebag_pred$actual, 
                positive = levels(test$PersonalLoan)[2])

set.seed(1234)
svm_fit <- train(PersonalLoan ~ ., 
                 data = train, 
                 method = "svmRadial", 
                 trControl = fit_ctrl, 
                 preProc = c("center", "scale"),
                 tuneLength = 8,
                 metric = "ROC", 
                 na.action = na.exclude)

svm_fit

svm_pred <- predict(svm_fit, test, type = "prob")
svm_pred$pred <- factor(ifelse(svm_pred$Yes >= .5, "Yes", "No"))
svm_pred <- cbind(svm_pred, actual = test$PersonalLoan)

confusionMatrix(data = svm_pred$pred, 
                reference = svm_pred$actual,
                positive = levels(test$PersonalLoan)[2])




