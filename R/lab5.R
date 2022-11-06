# 문제 1

exam1 <- function() {
  x <- LETTERS
  y <- letters
  return(paste0(x, y))
}
exam1()

# 문제 2

exam2 <- function(num){
  return(sum(1:num))
}
exam2(10)
exam2(5)

# 문제 3

exam3 <- function(x, y){
  if (x > y){
    result3<-(x-y)
  }else if(x <= y){
    result3<-(y-x)
  }
  return(print(result3))
}
exam3(10, 20)
exam3(20, 5)
exam3(5, 30)
exam3(6, 3)
exam3(3, 3)

# 문제 4

exam4 <- function(x,y,z){
  if ((y == "%/%" & x == 0) | (y == "%%" & x==0)){
    result4 <- "오류1"
  }else if((y == "%/%" & z == 0) | (y == "%%" & z==0)){
    result4 <- "오류2"
  }else if(y == "+"){
    result4 <- (x+z)
  }else if(y == "-"){
    result4 <- (x-z)
  }else if(y == "*"){
    result4 <- (x*z)
  }else if(y == "%/%" & x != 0 & z != 0){
    result4 <- (x%/%z)
  }else if(y == "%%"& x != 0 & z != 0){
    result4 <- (x%%z)
  }else {
    result4 <- "규격의 연산자만 전달하세요"
  }
  return(print(result4))
}
exam4(20, "+", 6)
exam4(20, "^", 6)
exam4(0, "%%", 6)
exam4(20, "%/%", 0)
exam4(20, "%%", 6)

# 문제 5

exam5 <- function(x, y="#"){
  if(x>0){
   cat(rep(y,x),sep="","\n")
  }
    return (NULL)
}
exam5(4)
exam5(-4)
exam5(7,"&")

# 문제 6

exam6 <- function(x){
  for (i in x) {
    if (is.na(i)) {
      cat ("NA는 처리불가\n")
      next;
    }
    if (i >= 85) {
      y <- "상"
      }else if (i < 85 & i > 69 ) {
        y <- "중"
        }else {
          y <- "하"
          }
    cat(i, "점은 ", y, "등급입니다.\n", sep="")
}}
exam6(c(100, 85, 84, NA, 70, 69))