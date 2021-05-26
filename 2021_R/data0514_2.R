library(devtools)
library(ggmap)


apikey= 'AIzaSyBhjM-GhBhFfxMBEa9OyBjvWla7k92EZmc'

register_google(apikey)
ggDaegu <- get_googlemap('daegu', maptype='hybrid')
ggmap(ggDaegu)
