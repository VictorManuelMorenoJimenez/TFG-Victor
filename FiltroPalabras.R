library(tm)

# To lowercase
myCorpus <- tm_map(myCorpus, tolower)
# remove numbers
myCorpus <- tm_map(myCorpus, removeNumbers)
# remove stopwords
myStopwords <- c(stopwords("spanish"))
# remove punctuation
myCorpus <- tm_map(myCorpus, removePunctuation)
idx <- which(myStopwords == "r")
# keep "r" by removing it from stopwords
#myStopwords <- myStopwords[-idx]
#myCorpus <- tm_map(myCorpus, removeWords, myStopwords)

myCorpus <- tm_map(myCorpus, PlainTextDocument)
myDtm <- TermDocumentMatrix(myCorpus, control = list(minWordLength = 1))