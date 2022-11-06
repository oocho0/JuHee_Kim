# 문제 1

str(iris)

# 문제 2

x <- c(1, 2, 3, 4, 5)
y <- c(2, 4, 6, 8, 10)
(df1 <-data.frame(x, y))

# 문제 3

col1 <- c(1, 2, 3, 4, 5)
col2 <- c('a', 'b', 'c', 'd', 'e')
col3 <- c(6, 7,  8, 9, 10)
(df2 <- data.frame(col1, col2, col3, stringsAsFactors=TRUE))

# 문제 4

제품명 <- c('사과', '딸기', '수박')
가격 <- c(1800, 1500, 3000)
판매량 <- c(24, 38, 13)
(df3 <- data.frame(제품명, 가격, 판매량))

# 문제 5

(mean(df3[,2]))
(mean(df3[,3]))

# 문제 6

name <- c("Potter", "Elsa", "Gates", "Wendy", "Ben")
gender <- factor(c("M", "F", "M", "F", "M"))
math <- c(85, 76, 99, 88, 40)
df4 <- data.frame(name, gender, math)
df4
#(a)
stat <- c(76, 73, 95, 82, 35)
df4$stat <- stat
df4
#(b)
df4$score <- df4$math+df4$stat
df4
#(c)
df4$grade <- ifelse(df4$score >= 150, "A", 
                     ifelse(df4$score >= 100, "B", 
                            ifelse(df4$score > 70, "C","D")))
df4


myemp <- read.csv("data/emp.csv")

# 문제7

(myemp)
(str(myemp))

# 문제 8

(myemp[c(3:5),,])

# 문제 9

myemp[,-4]

# 문제 10

(myemp$ename)
(myemp["ename"])

# 문제 11

(myemp[, c("ename", "sal")])

# 문제 12

(subset(myemp[,c("ename", "job", "sal")],myemp$job=="SALESMAN"))

# 문제 13

(subset(myemp, sal>=1000 & sal<=3000, c("ename","sal","deptno")))

# 문제 14

(subset(myemp[,c("ename", "job", "sal")],myemp$job!="ANALYST"))

# 문제 15

(subset(myemp[,c("ename","job")],myemp$job=="SALESMAN"|myemp$job=="ANALYST"))

# 문제 16

(myemp[is.na(myemp$comm),c("ename","sal")])

# 문제 17

myemp[order(myemp$sal),]

# 문제 18

(str(myemp))
nrow(myemp)
ncol(myemp)
dim(myemp)

# 문제 19

table(myemp$deptno)
myemp$deptno <- as.factor(emp$deptno)
summary(myemp$deptno)

# 문제 20

table(myemp$job)
myemp$job <- as.factor(emp$job)
summary(myemp$job)
