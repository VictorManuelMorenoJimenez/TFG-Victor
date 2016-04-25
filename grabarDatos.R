library(twitteR)

#Extraer texto
textoTweets <- function(nf, fichero) {
  listTweets <- readRDS(nf)
  #sapply(listTweets, grabaTextoTweet)
}

grabaTextoTweet <- function(tweet, directorio= "txt") {
  if(!tweet$isRetweet)
  {
    nf <- sprintf("%s/%s.txt", directorio, tweet$id)
    writeLines(tweet$text, nf)
  }
}
