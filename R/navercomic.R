library(rvest)

site<- "https://comic.naver.com/genre/bestChallenge?&page="
comicName<-NULL;comicSummary<-NULL;comicGrade<-NULL

for(i in 1: 20) {
  cat(i, "페이지\n")
  url <- paste0(site, i)
  html <- read_html(url)
    # 웹툰 제목
    node_Name <- html_nodes(html, "h6 > a")
    cName <- html_text(node_Name, trim=T)
    comicName <- c(comicName, cName)
    
    #웹툰 소개
    node_Summary <- html_nodes(html, ".challengeInfo .summary")
    cSummary <- html_text(node_Summary)
    comicSummary <-c(comicSummary, cSummary)
    
    #웹툰 점수
    node_Grade <- html_nodes(html, ".rating_type > strong")
    cGrade <- html_text(node_Grade)
    comicGrade <- c(comicGrade, cGrade)
}

navercomic <- data.frame(comicName, comicSummary, comicGrade)
View(navercomic)
write.csv(navercomic, "output/navercomic.csv")
read.csv("output/navercomic.csv")
