# 문제 1

countEvenOdd <- function(x){
  for (i in x){
    if(!is.numeric(i)){
      result1 <- print(NULL)
      break;
    }else{
      for (i in x){
        if(i%%2 != 0){
          odd <- c(odd, i)
          }else if(i%%2 == 0){
            even <- c(even, i)
          }
      result1 <- list(even=length(even), odd=length(odd))
    }}
    return(result1)}}

countEvenOdd(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10))
countEvenOdd(c(12, 23, 34, 45, 56, 67, 78, 89, 90))
countEvenOdd(c(1, 2, "three", 4, 5))

# 문제 2

vmSum <- function(x){
  result2 <- NULL
  if(!is.vector(x)){
    result2 <- c("벡터만 전달하숑!")
  }else if(is.vector(x) && !is.numeric(x)) {
    result2 <- c(0);
    cat("숫자 백터를 전달하숑!\n")
  }else {
    result2 <- sum(x)
  }
  return(result2)
}

vmSum(data.frame())
vmSum(1:3)
vmSum(LETTERS)

# 문제 3

vmSum2 <- function(x){
  result3 <- NULL
  if(!is.vector(x)){
    stop("벡터만 전달하숑!")
  }else if(is.vector(x) && !is.numeric(x)) {
    result3 <- c(0);
    warning("숫자 백터를 전달하숑!")
  }else {
    result3 <- sum(x)
  }
  return(result3)
}

vmSum2(data.frame())
vmSum2(1:3)
vmSum2(LETTERS)


# 문제 4
mySum <- function(x){
  if(is.null(x)){
    return(NULL)
  }else if(!is.vector(x) || is.list(x)){
    stop("벡터만 처리 가능!!")
    }else if(any(is.na(x))){
      x[is.na(x)] <- min(x,na.rm=T)
      warning("NA를 최저값으로 변경하여 처리함")
    }
  odd <- sum(x[seq(1,length(x),2)])
  even <- sum(x[seq(2,length(x),2)])
  return(list(oddSum=odd, evenSum=even))
}

mySum(1:10)
mySum(data.frame())
mySum(c(1, NA, 2, 3, NA, 4, 5, NA, 6, 7))

# 문제 5

myExpr <- function(x){
  if(!is.function(x)){
    stop("수행 안할꺼임!!")
  }else{
    y <<- sample(1:45, 6)
    return (x(y))
  }
}

myExpr(cat)
y
myExpr(max)
y
myExpr(sum)
y
myExpr(mySum)
y

# 문제 6

createVector1 <- function(...) {
  p <- c(...)
  if (is.null(p)){
    result6 <- NULL
  }else if (any(is.na(p))){
    result6 <- c(NA)
  }else {
    result6 <- p
  }
  return (result6)
}

createVector1(NULL)
createVector1("a", "b", NA, "c")
createVector1(1, 2, 3, 4, 5, 6)

# 문제 7

createVector2 <- function(...) {
  num <- c()
  char <- c()
  logic <- c()
  p <- list(...)
  if(length(p) ==0) {
    return (NULL)
  }else {
    for (i in p) {
      if (is.numeric(i)){
        num <- c(num, i)
      }else if (is.character(i)){
        char <- c(char, i)
      }else if (is.logical(i))
        logic <- c(logic, i)
    }
    return (list(
      numeric = num,
      character = char,
      logical = logic
    ))
  }
}

createVector2 (1, 2, 3, 4, "가", "나", T, F, "다", 5)
createVector2 ()
