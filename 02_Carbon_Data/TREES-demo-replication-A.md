---
title: "ART-TREES Data Replication Demo"
subtitle: "Training exercise in version control and reproducible analyses"
author: "Murphy, S"
date: "2025-08-08"
output:
  html_document:
    toc: yes
    theme: united
    df_print: kable
    highlight: pygments
    latex_engine: xelatex
    keep_md: true
    
always_allow_html: TRUE
editor_options: 
  markdown: 
    wrap: 70
---



### **1. Introduction: The Goal of This Exercise**

This R Markdown file demonstrates **perfect reproducibility** in
environmental data analysis, a fundamental principle for any credible
scientific or audit process.

**The Challenge**: An independent reviewer must be able to take your
data and your code, run it in a documented environment, and get the
exact same result you reported.

This script performs a straightforward calculation of total carbon
stock from forest inventory data using publicly available
methodologies.

**Your task**: Run this script and verify that you get the expected
result of **1,550 tCO₂e**. This demonstrates that:

-   Your computational environment is properly configured
-   The analysis is transparent and reproducible\
-   The methodology can be independently verified

**Key Principles Demonstrated**:

-   **Data Traceability**: Every calculation step is documented
-   **Reproducibility**: Results are identical across different users
    and systems
-   **Transparency**: Methods are open and verifiable

----------------------------------------------------------------------

### **2. Loading Required Packages**

This step loads the `dplyr` package for data manipulation. In
practice, all package versions should be documented (see runtime log
at the end of this script) to ensure computational reproducibility.


``` r
# Load required packages for data manipulation
install.packages("easypackages")
```

```

The downloaded binary packages are in
	/var/folders/_t/0yt99n3d0s1c1hnx40n3g9gw0000gn/T//RtmpIFNzlV/downloaded_packages
```

``` r
easypackages::packages(
  "animation", "allodb", "BIOMASS", "dataMaid", "DescTools","dplyr",
  "FawR", "ForestToolsRS", "ggplot2", "janitor", "lattice", "kableExtra", 
  "kernlab", "knitr", "psych", "RColorBrewer", "rmarkdown", "readxl", 
  "tibble", "tidymodels", "tidyverse", "tune", "useful", "webshot", "webshot2",
  prompt = F
  )
  
# Verify package is loaded
cat("All packages loaded successfully\n")
```

```
All packages loaded successfully
```

----------------------------------------------------------------------

### **3. Creating the Dataset**

We use a standardized dataset that represents typical forest inventory
measurements. This approach ensures the exercise works consistently
across different environments without requiring external file
dependencies.

**Data Source**: Simulated forest plot measurements following standard
forestry protocols.


``` r
# Create standardized forest inventory dataset
# Each row represents one forest measurement plot
carbon_data <- data.frame(
  plot_id = c("PLOT_001", "PLOT_002", "PLOT_003", "PLOT_004", "PLOT_005"),
  carbon_stock_tCO2e = c(310, 290, 350, 275, 325),
  forest_type = c("Primary", "Secondary", "Primary", "Secondary", "Primary"),
  measurement_year = c(2024, 2024, 2024, 2024, 2024)
)

# Display the input data
cat("Forest Inventory Data:\n")
```

```
Forest Inventory Data:
```

``` r
print(carbon_data)
```

```
   plot_id carbon_stock_tCO2e forest_type measurement_year
1 PLOT_001                310     Primary             2024
2 PLOT_002                290   Secondary             2024
3 PLOT_003                350     Primary             2024
4 PLOT_004                275   Secondary             2024
5 PLOT_005                325     Primary             2024
```

``` r
cat("\nDataset contains", nrow(carbon_data), "measurement plots\n")
```

```

Dataset contains 5 measurement plots
```

----------------------------------------------------------------------
