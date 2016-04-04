# Instalar paquetes
install.packages(c("devtools", "rjson", "bit64", "httr"))

#RESTART R session!
library(devtools)
install_github("twitteR", username="geoffjentry")
library(twitteR)

#Twitter Authentication with R; archivo ignorado y tokkeys
keys <- read.csv("tokkeys")
api_key <- keys[["api_key"]]
api_secret <- keys[["api_secret"]]
access_token <- keys[["access_token"]]
access_token_secret <- keys[["access_token_secret"]]

setup_twitter_oauth(api_key,api_secret,access_token,access_token_secret)

#Búsqueda en Twitter
searchTwitter(searchString, n=25, lang=NULL, since=NULL, until=NULL,
              locale=NULL, geocode=NULL, sinceID=NULL, maxID=NULL,
              resultType=NULL, retryOnRateLimit=120, ...)

# Mi búsqueda
searchTwitter("Partido+Popular", n=2, since="2015-10-27", until="2015-12-20")

searchTwitter("#Mariano")
