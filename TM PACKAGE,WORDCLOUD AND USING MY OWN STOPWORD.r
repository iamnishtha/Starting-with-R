#Text Used: Greta Thunberg’s Speech at the UN Climate Action Summit
library("tm")
library("wordcloud")
text <- readLines(file.choose())
doc <- Corpus(VectorSource(text))
for (j in seq(doc)) {doc[[j]] <- gsub("/"," ",doc[[j]])}
for (j in seq(doc)) {doc[[j]] <- gsub("@"," ",doc[[j]])}
doc<- tm_map(doc,removeNumbers)
doc<- tm_map(doc,removePunctuation)
doc<- tm_map(doc,stripWhitespace)
doc <- tm_map(doc, content_transformer(tolower))
doc<- tm_map(doc,removeWords, stopwords("english"))
inspect(doc)
dtm<- DocumentTermMatrix(doc)
dtm<- as.matrix(dtm)
d1<- rowSums(dtm)
v<- sort(colSums(dtm),decreasing=TRUE)
head(v,20)
d <- data.frame(word = names(v),freq=v)
set.seed(1234)
wordcloud(words = d$word, freq = d$freq, min.freq = 1,
          max.words=75, random.order=FALSE, colors=brewer.pal(8, "Dark2"))
barplot(d[1:10,]$freq, las = 2, names.arg = d[1:10,]$word,
col ="lightblue", main ="Most frequent words",
ylab = "Word frequencies")
