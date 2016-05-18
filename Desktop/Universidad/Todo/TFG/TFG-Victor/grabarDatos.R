# Esta funcion va a leeer un fichero .rds y extraera el texto. Un solo fichero.
library(twitteR)
library(tm)

grabaTextoTweet <- function(fichero, dir="Datos", dirTxt="txt") {
  nf<-sprintf("%s/%s", dir, fichero)
  listTweets <- strip_retweets(readRDS(nf))
  sapply(listTweets, function(x) TweetTexto(x, dirTxt))
  
  
}
#Esta funcion, graba el texto de un tweet en un fichero.
TweetTexto <- function(t, directorio="txt"){
  nf <- sprintf("%s/%s.txt", directorio, t$id)
  writeLines(t$text, nf, useBytes = TRUE)
}
#Esta funcion te saca todos los tweets a texto
GrabaTodosDatosTxt <- function(dirDatos="Datos", pattern=NULL, dirTxt="txt"){
  ficheros <- list.files(dirDatos, pattern = pattern)
  sapply(ficheros, function(x) grabaTextoTweet(x, dirDatos, dirTxt))
}

busquedas = c("Cis", "Ciudadanos", "Cs", "PartidoPopular", "PP", 
              "PartidoSocialista", "PSOE", "UnidadPopular", "UP")
dirs = c("ciudadanos", "ciudadanos", "ciudadanos", "pp", "pp", "psoe", "psoe",
          "up", "up")
pats <- sapply(busquedas, function(x) sprintf("*.%s.rds", x))
dirs2 <- sapply(dirs, function(x) sprintf("txt/%s", x))

mapply(function(p, t) GrabaTodosDatosTxt("Datos/RDS/NewDir", p, t), pats, dirs2)


