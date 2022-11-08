library(RSelenium)

remDr <- remoteDriver(remoteServerAddr = "localhost", port=4445, browserName="chrome")
remDr$open()

remDr$navigate("http://gs25.gsretail.com/gscvs/ko/products/event-goods")
tpo_gn <- NULL
tpo_gp <- NULL
j <- 1
tpo_btn1 <- remDr$findElement(using='css selector',"#TWO_TO_ONE")
tpo_btn1$clickElement()
Sys.sleep(2)

for (i in 1:8){
  tpo_gn_nodes <- remDr$findElements(using="css selector", paste0("div:nth-child(5) > ul > li:nth-child(", i,") > div > p.tit"))
  tpo_gn <- append(tpo_gn, unlist(sapply(tpo_gn_nodes, function(x) {x$getElementText()})))
  
  tpo_gp_nodes <- remDr$findElements(using="css selector", paste0("div:nth-child(5) > ul > li:nth-child(", i,") > div > p.price > span"))
  tpo_gpx <-unlist(sapply(tpo_gp_nodes, function(y) {y$getElementText()}))
  tpo_gsub1 <- gsub(",", "",tpo_gpx)
  tpo_gsub2 <- gsub("원", "",tpo_gsub1)
  tpo_gp <- append(tpo_gp, tpo_gsub2)
}
cat("총 124페이지 중 1페이지 데이터 수집 완료\n")
for (j in 1:123){
  tpo_btn2 <- remDr$findElement(using="css selector", "#contents > div.cnt > div.cnt_section.mt50 > div > div > div:nth-child(5) > div > a.next")
  tpo_btn2$clickElement()
  Sys.sleep(3)
  for (i in 1:8){
    tpo_gn_nodes <- remDr$findElements(using="css selector", paste0("#contents > div.cnt > div.cnt_section.mt50 > div > div > div:nth-child(5) > ul > li:nth-child(", i,") > div > p.tit"))
    tpo_gn <- append(tpo_gn, unlist(sapply(tpo_gn_nodes, function(x) {x$getElementText()})))
    tpo_gp_nodes <- remDr$findElements(using="css selector", paste0("div:nth-child(5) > ul > li:nth-child(", i,") > div > p.price > span"))
    tpo_gpx <-unlist(sapply(tpo_gp_nodes, function(y) {y$getElementText()}))
    tpo_gsub1 <- gsub(",", "",tpo_gpx)
    tpo_gsub2 <- gsub("원", "",tpo_gsub1)
    tpo_gp <- append(tpo_gp, tpo_gsub2)
  }
  j= j+1
  cat("총 124페이지 중 ", j, "페이지 데이터 수집 완료\n", sep="")
}

twoplusone_goods <- data.frame(goodsname = tpo_gn, goodsprice = tpo_gp)
cat("데이터 수집 및 정리 완료\n")
View(twoplusone_goods)
write.csv(twoplusone_goods,file="output/gs25_twotoone.csv")
