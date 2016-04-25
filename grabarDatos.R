library(twitteR)

#Extraer texto
textoTweets <- function(fichero, dir="datos") {
  nf <- sprintf("%s/%s", dir, fichero)
  listTweets <- readRDS(nf)
  sapply(listTweets, grabaTextoTweet)
}

grabaTextoTweet <- function(tweet, directorio= "txt") {
  if(!tweet$isRetweet)
  {
    nf <- sprintf("%s/%s.txt", directorio, tweet$id)
    writeLines(tweet$text, nf)
  }
}

grabaTodosDatosTxt <- function(dirDatos="Datos", dirTxt="txt")
{
  ficheros <- list.files(dirDatos)
  sapply(ficheros, function(x) textoTweets(x, dirDatos))
}