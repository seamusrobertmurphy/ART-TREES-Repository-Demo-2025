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



Data Traceability

Auditors must be able to trust that your data is authentic, accurate, and has not been altered without record. Our demo repository demonstrates this through:
  
  Version Control: Files are named with clear, descriptive conventions to track changes. For example, you should have a final version of a map, not just a series of ambiguous draft files.

QA/QC Procedures: We’ve included a folder for Quality Control to show where you would document internal checks, ensuring that manual data entry and calculations are double-checked to catch errors.

Traceability: Every key figure in a report, such as X hectares deforested, must be traceable back to its raw data source and the methodology used to derive it. Our file structure helps link report claims to specific evidence files.

Data Completeness

Completeness is a core principle of verification, meaning that all information needed to justify your GHG assertion must be included. Nothing significant can be missing.

Mapping Requirements: The repository structure is organized to align directly with the ART TREES requirements. This provides a clear framework for you to check if you have all the necessary data for every required category, such as deforestation areas, emission factors, and safeguards information.

Completeness Checklist: You can create and use a checklist to confirm that data for all reporting periods, geographic areas, and carbon pools are present and documented before submission.

Curation & Change-Logs: The repository includes a place to document any methodological changes made over time. This ensures that the context for your data is complete, so auditors can fully understand your approach.

Data Curation

A well-organized data package allows auditors to quickly find what they need, making the verification process more efficient and painless.

Logical Folder Structure: We recommend using a clear folder structure like the one in this demo.

Our layout, for example, separates Calculations & Analysis from Spatial Data and SOPs & Procedures. This logical grouping helps auditors instinctively navigate your submission.

README Files: A top-level README file acts as a quick guide to the entire repository. You can also add smaller README files to individual folders to describe their contents, like explaining which GIS files are included and what their purpose is.

Descriptive Filenaming: File names should be clear and descriptive, avoiding jargon. For example, Deforestation_Map_2020.shp is better than map_v7_final.shp.

Spatial Data Checklist: A critical part of any REDD+ submission is the spatial data. Auditors will check that all related files for a shapefile (e.g., .shp, .shx, .dbf) are included and that the coordinate reference system (.prj file) is present and correct. Our demo repository includes a section dedicated to this to ensure you don’t miss any components.

Data Replication

A well-organized …..

Data Replication: We recommend using .