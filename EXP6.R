#install the following packages
install.packages("tm")
install.packages("SnowballC")
install.packages("wordcloud")
install.packages("RColorBrewer")

#load the below packages
library("tm")
library("SnowballC")
library("wordcloud")
library("RColorBrewer")

#text mining
# load the text
filepath<-"F:\\OTHER STUFF\\PROGRAMMING\\4'TH YEAR\\7'TH SEM\\MP-R\\martin.txt"
text<- readLines(filepath)
docs<- Corpus(VectorSource(text))

# text transformation
toSpace<- content_transformer(function(x,pattern) gsub(pattern," ",x))

docs<- tm_map(docs,toSpace,"/")
docs<- tm_map(docs,toSpace,"@")
docs<- tm_map(docs,toSpace,"\\|")

# cleaning the text

#convert text to lower case
docs<- tm_map(docs,content_transformer(tolower))

#Remove numbers
docs<- tm_map(docs,removeNumbers)

#Remove english common stopwords
docs<- tm_map(docs,removeWords,stopwords("english"))

#Remove punctuations
docs<- tm_map(docs,removePunctuation)

#Eliminate extra white spaces
docs<- tm_map(docs,stripWhitespace)

#text stemming
docs<- tm_map(docs,stemDocument)

#Build a term document
dtm<- TermDocumentMatrix(docs)
m<- as.matrix(dtm)
v<- sort(rowSums(m),decreasing=TRUE)
d<- data.frame(word=names(v),freq=v)
head(d,10) #top 10 values

# Generate the word cloud
set.seed(1234)
wordcloud(words=d$word,freq=d$freq,min.freq=1,max.words=300,random.order=FALSE,rot.per=0.35,color=brewer.pal(8,"Dark2"))

# Frequency 
findFreqTerms(dtm, lowfreq = 4)
findAssocs(dtm, terms = "freedom", corlimit = 0.3)

#Bar Plot
barplot(d[1:10,]$freq, las = 2, names.arg = d[1:10,]$word,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")
