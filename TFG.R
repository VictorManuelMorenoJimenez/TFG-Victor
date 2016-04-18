# Ignorar
install.packages("twitteR", "RCurl", "RJSONIO", "stringr")
library(twitteR)

#Twitter Authentication with R; archivo ignorado y tokkeys
keys <- read.csv("TweetTok")
api_key <- keys[["api_key"]]
api_secret <- keys[["api_secret"]]
access_token <- keys[["access_token"]]
access_token_secret <- keys[["access_token_secret"]]

setup_twitter_oauth(api_key,api_secret,access_token,access_token_secret)

#Fecha
fecha <- as.character(Sys.Date())

# Criterios búsqueda
searchTwitteR("Partido+Socialista", n=1, since= fecha) -> tweets

#Graba twits en fichero
nombreFichero <- sprintf("Datos/%s.rds", fecha)
saveRDS(tweets, nombreFichero)


  
# Notas (no hacer mucho caso)  
## Criterios búsqueda
searchTwitter(searchString, n=25, lang=NULL, since=NULL, until=NULL,
              locale=NULL, geocode=NULL, sinceID=NULL, maxID=NULL,
              resultType=NULL, retryOnRateLimit=120, ...)

##Para acceder a los elementos de la lista
tweets[[1]]
##Crear tabla
as.data.frame(tweets[[1]])



