#options(repos = c(CRAN = "https://cloud.r-project.org"))
#readRenviron("~/.Renviron")
#readRenviron("~/.Rprofile")
#{bash}: "source  ~/.zshrc"
#chooseCRANmirror()

libs = c("devtools", 
         "ggmap", 
         "htmltools", 
         "janitor", "jsonlite", 
         "kableExtra", "knitr", 
         "latex2exp", 
         "leaflet", "leaflet.providers", "lwgeom", 
         "magrittr", "maptiles", "MASS", "methods", 
         "osmdata", 
         "pak", "pander", "psych", 
         "raster", "rasterVis", "RColorBrewer", "Rcpp", "readxl", "remotes",
         "rmarkdown", "rnaturalearth", "rnaturalearthdata", "RStoolbox", 
         "s2", "sf", "sp", "stars", "stringr", 
         "terra", "terrainr", "tibble", "tidyr", "tidyverse",  "tinytex", "tmap", "tmaptools", 
         "units")

installed_libs = libs %in% rownames(installed.packages())
if(any(installed_libs==F)){install.packages(libs[!installed_libs],repos="https://cloud.r-project.org")}
invisible(lapply(libs, library, character.only = T))
lapply(libs, require, character.only = T)

base::options(
  htmltools.dir.version = F, 
  htmltools.preserve.raw = F
)

knitr::opts_chunk$set(
  echo    = TRUE, 
  message = FALSE, 
  warning = FALSE,
  error   = FALSE, 
  comment = NA,
  tidy.opts = list(width.cutoff = 120),
  fig.width  = 14,
  fig.height = 10
) 

# non-spherical geometries
sf::sf_use_s2(use_s2 = FALSE) 

# purge cache
terraOptions(memfrac=0.9, tempdir = "./temp")

```