library(rvest)

html <- read_html("http://unico2013.dothome.co.kr/crawling/exercise_bs.html")

html_text(html_nodes(html, "h1"), trim = T)

ahref <- html_attr(html_nodes(html, "a"), "href")

html_attr(html_nodes(html, "img"), "src")

html_text(html_nodes(html, "h2:nth-of-type(1)"))

html_text(html_nodes(html, xpath="/html/body/ul/li[3]"))

html_text(html_nodes(html, "h2:nth-of-type(2)"))

html_text(html_nodes(html, "ol > li"), trim= T)
html_text(html_nodes(html, xpath="/html/body/ol/li"), trim= T)

html_text(html_nodes(html, "table *"))
html_text(html_nodes(html, xpath="/html/body/table"))

html_text(html_nodes(html, "tr.name"))
html_text(html_nodes(html, ".name"), "tr")

html_text(html_nodes(html, "#target"))