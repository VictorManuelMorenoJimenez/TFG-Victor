library(twitteR)
keys <- read.csv("TweetTok")
api_key <- keys[["api_key"]]
api_secret <- keys[["api_secret"]]
access_token <- keys[["access_token"]]
access_token_secret <- keys[["access_token_secret"]]
setup_twitter_oauth(api_key,api_secret,access_token,access_token_secret)
fecha <- "2016-05-10"
  #as.character(Sys.Date())

# Mi búsqueda
PartidoPopular <- searchTwitter("Partido+Popular", n=5000, lang= "es", since= fecha)
nombreFichero <- sprintf("Datos/RDS/%s%s.rds", fecha, "PartidoPopular")
saveRDS(PartidoPopular, nombreFichero)

PP <- searchTwitter("PP", n=5000, lang= "es", since= fecha)
nombreFichero <- sprintf("Datos/RDS/%s%s.rds", fecha, "PP")
saveRDS(PP, nombreFichero)

PartidoSocialista <- searchTwitter("Partido+Socialista", n=5000, lang= "es", since= fecha)
nombreFichero <- sprintf("Datos/RDS/%s%s.rds", fecha, "PartidoSocialista")
saveRDS(PartidoSocialista, nombreFichero)

PSOE <- searchTwitter("PSOE", n=5000, lang= "es", since= fecha)
nombreFichero <- sprintf("Datos/RDS/%s%s.rds", fecha, "PSOE")
saveRDS(PSOE, nombreFichero)

Ciudadanos <- searchTwitter("Ciudadanos", n=5000, lang= "es", since= fecha)
nombreFichero <- sprintf("Datos/RDS/%s%s.rds", fecha, "Ciudadanos")
saveRDS(Ciudadanos, nombreFichero)

Cis <- searchTwitter("C´s", n=5000, lang= "es", since= fecha)
nombreFichero <- sprintf("Datos/RDS/%s%s.rds", fecha, "Cis")
saveRDS(Cis, nombreFichero)

Cs <- searchTwitter("Cs", n=5000, lang= "es", since= fecha)
nombreFichero <- sprintf("Datos/RDS/%s%s.rds", fecha, "Cs")
saveRDS(Cs, nombreFichero)

Podemos <- searchTwitter("Podemos", n=5000, lang= "es", since= fecha)
nombreFichero <- sprintf("Datos/RDS/%s%s.rds", fecha, "Podemos")
saveRDS(Podemos, nombreFichero)

UnidadPopular <- searchTwitter("Unidad+Popular", n=5000, lang= "es", since= fecha)
nombreFichero <- sprintf("Datos/RDS/%s%s.rds", fecha, "UnidadPopular")
saveRDS(UnidadPopular, nombreFichero)

UP <- searchTwitter("UP", n=5000, lang= "es", since= fecha)
nombreFichero <- sprintf("Datos/RDS/%s%s.rds", fecha, "UP")
saveRDS(UP, nombreFichero)

#getCurRateLimitInfo()

#Directorio de datos
#f <- list.files("Datos/RDS/")
#f1 <- f[[1]]
#nf <- sprintf("%s/%s", "Datos/RDS", f1)


