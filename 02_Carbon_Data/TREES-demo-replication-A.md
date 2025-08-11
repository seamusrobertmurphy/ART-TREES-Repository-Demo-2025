ART-TREES Data Replication Demo A
================
Murphy, S
2025-08-08

- [**1. Introduction**](#1-introduction)
- [**2. Loading Required Packages**](#2-loading-required-packages)
- [**3. Creating the Dataset**](#3-creating-the-dataset)
- [**4. Data Quality Verification**](#4-data-quality-verification)
- [**5. Carbon Stock Calculation**](#5-carbon-stock-calculation)
- [**6. Result Verification**](#6-result-verification)
- [**7. Document Runtime Log**](#7-document-runtime-log)
- [**8. Exercise Completion**](#8-exercise-completion)

<img src="https://art.apx.com/images/ART.png" width="500" />

[![LinkedIn
Badge](https://img.shields.io/badge/Project-Profile-blue)](https://art.apx.com/mymodule/reg/TabDocuments.asp?r=111&ad=Prpt&act=update&type=PRO&aProj=pub&tablename=doc&id1=109)
[![Pubs
Badge](https://img.shields.io/badge/Project-Pubs-critical)](https://orcid.org/my-orcid?orcid=0000-0002-1792-0351)
[![Twitter
Badge](https://img.shields.io/badge/Project-Tweets-critical?color=blue)](https://x.com/)
[![Program
Badge](https://img.shields.io/badge/Project-Steward-critical)](https://www.ambiente.gob.ec/)
[![Annexes
Badge](https://img.shields.io/badge/Submission-Annexes-critical?color=blue)](https://nextcloud.ambiente.gob.ec)

------------------------------------------------------------------------

### **1. Introduction**

This R Markdown file demonstrates **perfect reproducibility** in
environmental data analysis, a fundamental principle for any credible
scientific or audit process.

**The Challenge**: An independent reviewer must be able to take your
data and your code, run it in a documented environment, and get the
exact same result you reported.

This script performs a straightforward calculation of total carbon stock
from forest inventory data using publicly available methodologies.

**Your task**: Run this script and verify that you get the expected
result of **1,550 tCO₂e**. This demonstrates that:

- Your computational environment is properly configured
- The analysis is transparent and reproducible  
- The methodology can be independently verified

**Key Principles Demonstrated**:

- **Data Traceability**: Every calculation step is documented
- **Reproducibility**: Results are identical across different users and
  systems
- **Transparency**: Methods are open and verifiable

------------------------------------------------------------------------

### **2. Loading Required Packages**

This step loads the `dplyr` package for data manipulation. In practice,
all package versions should be documented (see runtime log at the end of
this script) to ensure computational reproducibility.

``` r
# Load required packages for data manipulation
install.packages("easypackages")
```


    The downloaded binary packages are in
        /var/folders/_t/0yt99n3d0s1c1hnx40n3g9gw0000gn/T//RtmpfP0ryJ/downloaded_packages

``` r
easypackages::packages(
  "animation", "allodb", "BIOMASS", "dataMaid", "DescTools","dplyr", "flextble",
  "FawR", "ForestToolsRS", "ggplot2", "janitor", "lattice", "kableExtra", 
  "kernlab", "knitr", "psych", "RColorBrewer", "rmarkdown", "readxl", 
  "tibble", "tidymodels", "tidyverse", "tune", "useful", "webshot", "webshot2",
  prompt = F
  )
  
# Verify package is loaded
cat("All packages loaded successfully")
```

    All packages loaded successfully

------------------------------------------------------------------------

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
  measurement_date = as.Date(c("2024-03-15", "2024-04-22", "2024-05-08", "2024-06-12", "2024-07-03"))
)

# Display input data
cat("Forest Inventory Data:\n")
```

    Forest Inventory Data:

``` r
carbon_data_flex <- flextable(head(carbon_data[, 1:4])) |>
  set_header_labels(carbon_data_flex,values = list(
    plot_id             = "Plot ID",
    carbon_stock_tCO2e  = "Carbon Stock (tCO2-e)",
    forest_type         = "Forest Type",
    measurement_year    = "Inventory Date (YYYY)")) 

carbon_data_flex = fit_to_width(carbon_data_flex, max_width = 6.5)
carbon_data_flex = fontsize(carbon_data_flex, size=8,part="all")
carbon_data_flex = width(carbon_data_flex, width = 1)
carbon_data_flex
```

![](TREES-demo-replication-A_files/figure-gfm/unnamed-chunk-2-1.png)<!-- -->

``` r
cat("\nDataset contains", nrow(carbon_data), "measurement plots\n")
```


    Dataset contains 5 measurement plots

------------------------------------------------------------------------

### **4. Data Quality Verification**

Before performing calculations, we first verify data integrity, a
critical step in any reproducible analysis.

``` r
# Check for missing values
missing_values <- sum(is.na(carbon_data$carbon_stock_tCO2e))
cat("Missing values in carbon stock data:", missing_values, "\n")
```

    Missing values in carbon stock data: 0 

``` r
# Verify data types
cat("Data structure verification:\n")
```

    Data structure verification:

``` r
str(carbon_data)
```

    'data.frame':   5 obs. of  4 variables:
     $ plot_id           : chr  "PLOT_001" "PLOT_002" "PLOT_003" "PLOT_004" ...
     $ carbon_stock_tCO2e: num  310 290 350 275 325
     $ forest_type       : chr  "Primary" "Secondary" "Primary" "Secondary" ...
     $ measurement_date  : Date, format: "2024-03-15" "2024-04-22" ...

``` r
# Summary statistics
cat("\nCarbon stock summary statistics:\n")
```


    Carbon stock summary statistics:

``` r
summary(carbon_data$carbon_stock_tCO2e)
```

       Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
        275     290     310     310     325     350 

------------------------------------------------------------------------

### **5. Carbon Stock Calculation**

This is the core analytical step. We calculate total carbon stock using
a simple, transparent aggregation method that can be easily verified by
independent reviewers.

**Methodology**: Sum all individual plot measurements to get total
carbon stock across the study area.

``` r
# Calculate total carbon stock using simple aggregation
calculation_summary = carbon_data |>
  summarise(
    total_plots = n(),
    total_carbon_tCO2e = sum(carbon_stock_tCO2e),
    mean_carbon_per_plot = round(mean(carbon_stock_tCO2e), 1)
  )

# Extract result & visualize
total_carbon <- calculation_summary$total_carbon_tCO2e
cat("Calculation Summary:\n")
```

    Calculation Summary:

``` r
cat("- Number of plots:", calculation_summary$total_plots, "\n")
```

    - Number of plots: 5 

``` r
cat("- Mean carbon per plot:", calculation_summary$mean_carbon_per_plot, "tCO₂e\n")
```

    - Mean carbon per plot: 310 tCO₂e

``` r
cat("- Total carbon stock:", total_carbon, "tCO₂e\n")
```

    - Total carbon stock: 1550 tCO₂e

------------------------------------------------------------------------

### **6. Result Verification**

This section presents the final result in a clear format for
verification purposes.

``` r
# Display final result prominently
cat("=====================================\n")
```

    =====================================

``` r
cat("       REPRODUCIBILITY CHECK\n")
```

           REPRODUCIBILITY CHECK

``` r
cat("=====================================\n")
```

    =====================================

``` r
cat("   TOTAL CARBON STOCK:", total_carbon, "tCO₂e\n")
```

       TOTAL CARBON STOCK: 1550 tCO₂e

``` r
cat("=====================================\n")
```

    =====================================

``` r
# Verification check
expected_result <- 1550
if (total_carbon == expected_result) {
  cat("\n✓ SUCCESS: Result matches expected value!\n")
  cat("✓ Reproducibility confirmed\n")
} else {
  cat("\n✗ WARNING: Result does not match expected value\n")
  cat("Expected:", expected_result, "tCO₂e\n")
  cat("Calculated:", final_total_carbon, "tCO₂e\n")
  cat("Difference:", abs(final_total_carbon - expected_result), "tCO₂e\n")
}
```


    ✓ SUCCESS: Result matches expected value!
    ✓ Reproducibility confirmed

------------------------------------------------------------------------

### **7. Document Runtime Log**

Documenting the computational environment is essential for
reproducibility. This information allows others to recreate the exact
same computational conditions.

``` r
# Document the computational environment
cat("Runtime Environment Information:\n")
```

    Runtime Environment Information:

``` r
cat("================================\n")
```

    ================================

``` r
sessionInfo()
```

    R version 4.3.0 (2023-04-21)
    Platform: aarch64-apple-darwin20 (64-bit)
    Running under: macOS 15.6

    Matrix products: default
    BLAS:   /Library/Frameworks/R.framework/Versions/4.3-arm64/Resources/lib/libRblas.0.dylib 
    LAPACK: /Library/Frameworks/R.framework/Versions/4.3-arm64/Resources/lib/libRlapack.dylib;  LAPACK version 3.11.0

    locale:
    [1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8

    time zone: America/Vancouver
    tzcode source: internal

    attached base packages:
    [1] stats     graphics  grDevices utils     datasets  methods   base     

    other attached packages:
     [1] psych_2.5.6        webshot2_0.1.2     webshot_0.5.5      useful_1.2.6.1    
     [5] tinytex_0.57       lubridate_1.9.4    forcats_1.0.0      stringr_1.5.1     
     [9] readr_2.1.5        tidyverse_2.0.0    yardstick_1.3.2    workflowsets_1.1.1
    [13] workflows_1.2.0    tune_1.3.0         tidyr_1.3.1        rsample_1.3.0     
    [17] recipes_1.3.1      purrr_1.0.4        parsnip_1.3.2      modeldata_1.4.0   
    [21] infer_1.0.9        dials_1.4.0        scales_1.4.0       broom_1.0.8       
    [25] tidymodels_1.3.0   tibble_3.3.0       rmarkdown_2.29     RColorBrewer_1.1-3
    [29] knitr_1.50         kernlab_0.9-33     kableExtra_1.4.0   janitor_2.2.1     
    [33] flextable_0.9.9    dplyr_1.1.4        caret_7.0-1        lattice_0.22-7    
    [37] ggplot2_3.5.2      c2z_0.2.0          BIOMASS_2.2.4      animation_2.7     

    loaded via a namespace (and not attached):
      [1] splines_4.3.0           later_1.4.2             cellranger_1.1.0       
      [4] hardhat_1.4.1           minpack.lm_1.2-4        pROC_1.18.5            
      [7] rpart_4.1.24            lifecycle_1.0.4         sf_1.0-21              
     [10] globals_0.17.0          processx_3.8.6          MASS_7.3-58.4          
     [13] backports_1.5.0         magrittr_2.0.3          yaml_2.3.10            
     [16] remotes_2.5.0           httpuv_1.6.16           zip_2.3.3              
     [19] askpass_1.2.1           sessioninfo_1.2.3       pkgbuild_1.4.8         
     [22] gld_2.6.7               chromote_0.5.1          DBI_1.2.3              
     [25] pkgload_1.4.0           rvest_1.0.4             expm_1.0-0             
     [28] nnet_7.3-20             rappdirs_0.3.3          ipred_0.9-15           
     [31] gdtools_0.4.2           lava_1.8.1              listenv_0.9.1          
     [34] terra_1.8-54            units_0.8-7             parallelly_1.45.0      
     [37] svglite_2.2.1           codetools_0.2-20        xml2_1.3.8             
     [40] tidyselect_1.2.1        farver_2.1.2            stats4_4.3.0           
     [43] jsonlite_2.0.0          e1071_1.7-16            ellipsis_0.3.2         
     [46] survival_3.8-3          iterators_1.0.14        systemfonts_1.2.3      
     [49] foreach_1.5.2           tools_4.3.0             ragg_1.4.0             
     [52] Rcpp_1.1.0              glue_1.8.0              mnormt_2.1.1           
     [55] prodlim_2025.04.28      gridExtra_2.3           xfun_0.52              
     [58] usethis_3.1.0           websocket_1.4.4         withr_3.0.2            
     [61] fastmap_1.2.0           boot_1.3-31             openssl_2.3.3          
     [64] easypackages_0.1.0      digest_0.6.37           timechange_0.3.0       
     [67] R6_2.6.1                mime_0.13               textshaping_1.0.1      
     [70] generics_0.1.4          fontLiberation_0.1.0    data.table_1.17.8      
     [73] class_7.3-23            httr_1.4.7              htmlwidgets_1.6.4      
     [76] ModelMetrics_1.2.2.2    pkgconfig_2.0.3         gtable_0.3.6           
     [79] Exact_3.3               timeDate_4041.110       GPfit_1.0-9            
     [82] furrr_0.3.1             htmltools_0.5.8.1       fontBitstreamVera_0.1.1
     [85] profvis_0.4.0           lmom_3.2                gower_1.0.2            
     [88] snakecase_0.11.1        rstudioapi_0.17.1       tzdb_0.5.0             
     [91] reshape2_1.4.4          uuid_1.2-1              nlme_3.1-168           
     [94] proxy_0.4-27            cachem_1.1.0            rootSolve_1.8.2.4      
     [97] KernSmooth_2.23-26      parallel_4.3.0          miniUI_0.1.2           
    [100] pillar_1.11.0           grid_4.3.0              vctrs_0.6.5            
    [103] urlchecker_1.0.1        promises_1.3.3          lhs_1.2.0              
    [106] xtable_1.8-4            evaluate_1.0.4          mvtnorm_1.3-3          
    [109] cli_3.6.5               compiler_4.3.0          rlang_1.1.6            
    [112] future.apply_1.11.3     classInt_0.4-11         ps_1.9.1               
    [115] plyr_1.8.9              fs_1.6.6                stringi_1.8.7          
    [118] viridisLite_0.4.2       assertthat_0.2.1        devtools_2.4.5         
    [121] fontquiver_0.2.1        Matrix_1.5-4            hms_1.1.3              
    [124] future_1.40.0           shiny_1.11.1            memoise_2.0.1          
    [127] officer_0.6.10          DiceDesign_1.10        

``` r
# Autosave log in 06_QCQC folder
writeLines(capture.output(devtools::session_info()), paste0("../06_QAQC/runtime_log_", format(Sys.time(), "%Y%m%d_%H%M%S"), ".txt"))
```

------------------------------------------------------------------------

### **8. Exercise Completion**

**Congratulations!** If you see “SUCCESS” above, you have:

1.  **Demonstrated reproducibility**: Your result matches the expected
    value
2.  **Verified data integrity**: The calculation process is transparent
3.  **Documented your environment**: Future users can replicate your
    setup
4.  **Applied best practices**: Your analysis follows scientific
    standards

**Next Steps**:

- Save this completed script with your results with using the chunk
  operations or manually
- Compare your runtime environment with others in your traininggroup
- Practice with your own datasets using this same approach
