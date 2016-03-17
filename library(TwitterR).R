
# Usar el paquete twitter
# Antes instalar paquete twitterR
# install.packages("twitteR")
library(twitteR)
# Conseguir autorización de la app de twitter
setup_twitter_oauth("mbL0ZaTzMFg4i9RmUf42vRic7","8jDW2ushgg9OSO0jE3fCF3r6Uamg0s9EnW2BOrR3BmTnup0IqM", "4566942261-nMnf4iU0PBYPKZxwIBczDRYKi0s0FMSLjdilKyO", "GoYnfBCqzzmPIQrV0VaG7NAbsQr0rJ8SsGpaJwrgUK40D")
# Objeto de búsqueda
searchTwitteR("Pablo Iglesias")
#Convertir en JSON
# install.packages ("jasonlite")
library ("jsonlite")

