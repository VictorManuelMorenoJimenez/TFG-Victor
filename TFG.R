# Ignorar
install.packages("twitteR", "RCurl", "RJSONIO", "stringr")
library(twitteR)
library(RCurl)
library(RJSONIO)
library(stringr)

#Twitter Authentication with R; archivo ignorado y tokkeys
keys <- read.csv("TweetTok")
api_key <- keys[["api_key"]]
api_secret <- keys[["api_secret"]]
access_token <- keys[["access_token"]]
access_token_secret <- keys[["access_token_secret"]]

setup_twitter_oauth(api_key,api_secret,access_token,access_token_secret)

# Criterios búsqueda
searchTwitter(searchString, n=25, lang=NULL, since=NULL, until=NULL,
              locale=NULL, geocode=NULL, sinceID=NULL, maxID=NULL,
              resultType=NULL, retryOnRateLimit=120, ...)

