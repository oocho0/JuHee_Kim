library(rvest)

html <- read_html("http://news.daum.net/")
html

# 뉴스의 카테고리
newscategory <- NULL
for (i in 1:20) {
  categore <- html_text(html_nodes(html, paste0("body > div.container-doc > main > section > div > div.content-article > div.box_g.box_news_issue > ul > li:nth-child(", i,") > div > div > span > span.txt_category")))
  newscategory <- c(newscategory, categore)
}

# 뉴스의 제목
newstitle <- NULL
for (i in 1:20) {
  anode <- html_node(html, xpath=(paste0("/html/body/div[2]/main/section/div/div[1]/div[1]/ul/li[", i,"]/div/div/strong/a")))
  ahref <- html_attr(anode, "href")
  article <- read_html(paste0(ahref, "/#mArticle"))
  title <- html_text(html_node(article, xpath=('//*[@id="mArticle"]/div[1]/h3')))
  newstitle <- c(newstitle, title)
}

daumnews <- data.frame(newscategory, newstitle)
View(daumnews)
write.csv(daumnews, "output/daumnews.csv")
read.csv("output/daumnews.csv")

# ver.2
url <-"http://news.daum.net/"
html <- read_html(url)

# 뉴스의 카테고리2
node_categ <- html_nodes(html, ".txt_category")
(newscategory <- html_text(node_categ))

# 뉴스의 제목2
node_title <- html_nodes(html, ".item_issue .tit_g a")
(newstitle <- html_text(node_title, trim=T))

news.issues <- data.frame(newscategory, newstitle)
View(news.issues)
write.csv(news.issues, "output/daumnews2.csv")

read.csv("output/daumnews2.csv")