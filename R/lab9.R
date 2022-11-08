library(RSelenium)
remDr <- remoteDriver(remoteServerAddr = "localhost", port=4445, browserName = "chrome")
remDr$open()
remDr$navigate("https://www.megabox.co.kr/movie-detail/comment?rpstMovieNo=21049700")

pageLink <- NULL
category <- NULL
score <- NULL
text <- NULL
repeat{
  Sys.sleep(2)
  for (i in 2:11) {
    score_node <- remDr$findElements(using='css selector', paste0("#contentData > div > div.movie-idv-story > ul > li:nth-child(", i,") > div.story-area > div.story-box > div > div.story-cont > div.story-point > span"))
    score <- append(score, unlist(sapply(score_node, function(x){x$getElementText()})))
    category_node <- remDr$findElements(using='css selector', paste0("#contentData > div > div.movie-idv-story > ul > li:nth-child(", i,") > div.story-area > div.story-box > div > div.story-cont > div.story-recommend"))
    category <- append(category, unlist(sapply(category_node, function(x){x$getElementText()})))
    text_node <- remDr$findElements(using='css selector',paste0("#contentData > div > div.movie-idv-story > ul > li:nth-child(", i,") > div.story-area > div.story-box > div > div.story-cont > div.story-txt"))
    text <- append(text, unlist(sapply(text_node, function(x){x$getElementText()}))) 
    cat("1 페이지 ", (i-1),"번째 정보 획득\n", sep="")
  }
  cat("1 페이지 완료\n 이후로는 페이지만 표시\n")
  for (i in 2:10 ) {
    pageLink <- remDr$findElement(using='css selector',paste0("#contentData > div > div.movie-idv-story > nav > a:nth-child(", i,")"))
    pageLink$clickElement()
    Sys.sleep(1)
    for (j in 2:11) {
      score_node <- remDr$findElements(using='css selector', paste0("#contentData > div > div.movie-idv-story > ul > li:nth-child(", j,") > div.story-area > div.story-box > div > div.story-cont > div.story-point > span"))
      score <- append(score, unlist(sapply(score_node, function(x){x$getElementText()})))
      category_node <- remDr$findElements(using='css selector', paste0("#contentData > div > div.movie-idv-story > ul > li:nth-child(", j,") > div.story-area > div.story-box > div > div.story-cont > div.story-recommend"))
      category <- append(category, unlist(sapply(category_node, function(x){x$getElementText()})))
      text_node <- remDr$findElements(using='css selector',paste0("#contentData > div > div.movie-idv-story > ul > li:nth-child(", j,") > div.story-area > div.story-box > div > div.story-cont > div.story-txt"))
      text <- append(text, unlist(sapply(text_node, function(x){x$getElementText()})))
    }
  cat(i," 페이지 완료\n", sep="")
  }
    cat("데이터 수집 종료\n")
    break;
}
movie <- rbind(score, category, text)
View(movie)
write(movie,"output/movie.csv")