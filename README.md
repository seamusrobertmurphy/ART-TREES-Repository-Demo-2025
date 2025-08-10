ART-TREES Audit Repository Demo
================
Winrock Intl
2025-08-09

- [The Practical Exercise: Mock
  Audit](#the-practical-exercise-mock-audit)
  - [Step 1. Clone the Repository](#step-1-clone-the-repository)
  - [Step 2. Replicate the Script](#step-2-replicate-the-script)
  - [Step 3. Document Runtime Log](#step-3-document-runtime-log)
- [Appendix I: Repository Guidelines](#appendix-i-repository-guidelines)


    The downloaded binary packages are in
        /var/folders/_t/0yt99n3d0s1c1hnx40n3g9gw0000gn/T//RtmpOtroX2/downloaded_packages

------------------------------------------------------------------------

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

Welcome to the
[ART-TREES-demo-repository.git](https://github.com/seamusrobertmurphy/TREES-demo-repository),
a training resource for submitting a complete data package for an ART
TREES verification audit. Here, we document some best practices for
using version control to ensure perfect reproducibility of your
calculations.

As you navigate this repository, keep the following core concepts in
mind, as these are fundamental to how auditors evaluate your submission:

- **Data Traceability**: Every key figure must be traceable back to its
  original source data and the methodology used to derive it.
- **Data Completeness**: All information required to justify your GHG
  assertion must be included, with nothing significant missing.
- **Data Curation**: A logical folder structure, descriptive file names,
  and clear documentation allow auditors to quickly find what they need.

For a deeper dive into these principles, see the **Repository
Guidelines** section below.

- [The Practical Exercise: Mock
  Audit](#the-practical-exercise-mock-audit)
  - [Step 1. Clone the Repository](#step-1-clone-the-repository)
  - [Step 2. Replicate the Script](#step-2-replicate-the-script)
  - [Step 3. Document Runtime Log](#step-3-document-runtime-log)
- [Appendix I: Repository Guidelines](#appendix-i-repository-guidelines)
- [Appendix II: ISO Guidelines](#appendix-ii-iso-guidelines)
- [Appendix III: Replication in
  `renv`](#appendix-iii-replication-in-renv)

------------------------------------------------------------------------

### The Practical Exercise: Mock Audit

#### Step 1. Clone the Repository

Before starting, please ensure Git CLI (or Git Desktop), R, and RStudio
are installed, and an internet connection is possible (see Appendix III
for installation details).

Open your command-line tool (or GitHub Desktop) and clone this
repository to your local computer. This step is crucial for working with
precise, version-controlled data.

``` r
git clone https://github.com/seamusrobertmurphy/TREES-demo-repository.git`
```

------------------------------------------------------------------------

#### Step 2. Replicate the Script

The analysis script and its data are located in the /02_Carbon_Data/
directory. Simply open the ART-TREES-TMR-Replication-Demo.Rmd file in
your R environment and run it. The script will automatically perform a
simple carbon stock calculation and output the final result.

- Open the Script: Launch RStudio and open the
  `02_Carbon_Data/ART-TREES-TMR-Replication-Demo.Rmd` file.
- Inspect the Code: Before running, review the code. You’ll see that
  it’s broken down into logical chunks:
  - Loading the required R package (`library(dplyr)`).
  - Defining the dataset directly within the script (hypothetical forest
    plot data).
  - Performing a simple calculation to sum the total carbon stock.
  - Outputting the final calculated value in tCO₂e.
- Run the Script: Execute the entire R Markdown file. You can do this by
  clicking the “Run All Chunks” button in RStudio or by using the knitr
  function. The script will process the data and display the final
  result in the console.

The script’s output will display a single, final calculated value in
tCO₂e. Compare this result to the figure reported in Table 16 of the
TMR. They should match exactly.

- If the results match: You have successfully demonstrated data
  reproducibility. The combination of the version-controlled data and
  script in this repository has produced the same result as the official
  submission. This is a critical success for any audit.
- If the results do not match: This is a key learning opportunity. It
  shows how even small discrepancies, a different software version, a
  missing package, or an altered data file, can lead to different
  results. This is a common and serious finding in a verification audit,
  and it underscores the need for rigorous version control and a robust
  QA/QC process.

------------------------------------------------------------------------

<div>

</div>

------------------------------------------------------------------------

#### Step 3. Document Runtime Log

To demonstrate **data integrity** and **reproducibility**, you must
document the exact software environment used for your calculations. An
**auditor will require this runtime log** to independently verify your
results. This step involves generating a log of your R session’s
dependencies and committing it to the repository.

- Open your R console and run `devtools::session_info()`.

- Copy the full output and save it as a text file named
  `runtime_log_YYYYMMDD.txt` in the `/06_QAQC/` folder

- Use Git to commit this file to create a permanent, verifiable link
  between the code, the data, and the computational environment.

The resulting log serves as a snapshot of your computing system and all
the software dependencies at that precise moment in time,

------------------------------------------------------------------------

### Appendix I: Repository Guidelines

We offer the following example as a tentative layout. Please explore the
folder structure and examine the contents of each sample document, and
provide feedback on improved structure more appropriate to your project
design.

Of course. Here is the corrected code formatted within a Markdown code
block. You can copy this directly and paste it into your `README.md`
file.

<table>
<colgroup>
<col style="width: 31%" />
<col style="width: 68%" />
</colgroup>
<tbody>
<tr>
<td><p><strong>Repository Structure:</strong></p>
<ul>
<li><p><code>01_Program_Data/</code></p></li>
<li><p><code>02_Carbon_Data/</code></p></li>
<li><p><code>03_Spatial_Data/</code></p>
<ul>
<li><code>TREES-TMR-Demo.Rmd</code></li>
</ul></li>
<li><p><code>04_Uncertainty/</code></p></li>
<li><p><code>05_Safeguards/</code></p></li>
<li><p><code>06_QAQC_SOPs/</code></p></li>
</ul></td>
<td><img src="01_Program_Data/repo-layout-wide%20.png"
alt="Fig,1 Illustrative example of wider repository layout"
width="300" /><br />
<em>Fig, 1: Illustrative example of wider repository layout</em></td>
</tr>
</tbody>
</table>


    +---------------------------+----------------------------------------------------------------------+
    | **Repository Structure:**    | ![Fig,1 Illustrative example of wider repository                     |
    |                              | layout](01_Program_Data/repo-layout-wid                              |
    | -   `01_Program_Data/`       | e.png){alt="Fig,1 Illustrative example of wider layout repository"}\ |
    |                              | *Fig, 1: Illustrative example of wider repository layout*            |
    | -   `02_Carbon_Data/`        |                                                                      |
    |                              |                                                                      |
    | -   `03_Spatial_Data/`       |                                                                      |
    |                              |                                                                  |
    |     -   `TREES-TMR-Demo.Rmd` |                                                                  |
    |                              |                                                                      |
    | -   `04_Uncertainty/`        |                                                                      |
    |                              |                                                                      |
    | -   `05_Safeguards/`         |                                                                      |
    |                              |                                                                      |
    | -   `06_QAQC/`          |                                                                      |
    +---------------------------+----------------------------------------------------------------------+

    ----------------------------------------------------------------------------------------------------

    These are the fundamental concepts that auditors use to evaluate your submission, which are embedded
    throughout this repository's structure.

    -   Data Traceability: We demonstrate this through clear file naming conventions, a folder for QA/QC
        procedures, and a structure that links report claims to specific evidence files. Every key
        figure in a report, such as X hectares deforested, must be traceable back to its raw data source
        and the methodology used to derive it.
    -   Data Completeness: This repository is organized to align directly with the ART TREES
        requirements. This provides a clear framework for you to check if you have all the necessary
        data for every required category, such as deforestation areas, emission factors, and safeguards
        information. The repository also includes a place to document any methodological changes made
        over time.
    -   Data Curation: A well-organized data package allows auditors to quickly find what they need. Our
        layout, for example, separates Calculations & Analysis from Spatial Data and SOPs & Procedures.
        This logical grouping helps auditors instinctively navigate your submission. A top-level README
        and descriptive filenames are also key curation practices.
    -   Data Replication: The use of a package management tool like renv (see Appendix II) allows for
        locking in all dependencies. This ensures that anyone can replicate your analysis in the exact
        same computational environment, which is a key part of the verification process.

    ##### Repository Governance

    We offer a shortlist of default community health files that may be adapted to include SOPs and
    documentation of workbook updates, always aiming to build trust in the auditor:

    -   CODE_OF_CONDUCT.md: A CODE_OF_CONDUCT file defines standards for how to engage in a community.
    -   CONTRIBUTING.md: A CONTRIBUTING file communicates how people should contribute to your project.
        Discussion category forms can also be added to help customize priority templates issued to
        stakeholder or partners, or community members for opening new discussions in your repository..
    -   FUNDING.yml: A FUNDING file displays a sponsor button in your repository to increase the
        visibility of funding options for your open source project.
    -   GOVERNANCE.md: A GOVERNANCE file lets people know about how your project is governed. For
        example, it might discuss project roles and how decisions are made.
    -   Pull request & config.yml: Issue and pull request templates help standardize the information
        you’d like contributors to include when they open issues and pull requests in your repository.
    -   SECURITY.md: A SECURITY file gives instructions on how to report a security vulnerability in
        your project and description that hyperlinks the file. For more information, see [Adding a
        security policy to your
        repository](https://docs.github.com/en/code-security/getting-started/adding-a-security-policy-to-your-repository).
    -   SUPPORT.md: A SUPPORT file lets people know about ways to get help with your project. For more
        information, see [Adding support resources to your
        project](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/adding-support-resources-to-your-project).

    ----------------------------------------------------------------------------------------------------

    <div>

    </div>

    ----------------------------------------------------------------------------------------------------

    ----------------------------------------------------------------------------------------------------

    <div>

    </div>

    ----------------------------------------------------------------------------------------------------

    ### Appendix II: ISO Guidelines {#appendix-ii-iso-guidelines}

    The data management principles of traceability, integrity, and reproducibility are key to GHG
    audits. These principles are supported by a range of ISO standards. This appendix provides an
    overview of those ISO standards relevant to data governance and quality, and provides additional
    resources for debugging and validating geospatial operations across platform using the `liblwgeom`
    library.

    The `liblwgeom` library was derived according to the OpenGIS Simple Features Access (SFA) geometry
    rules (ISO 19125) and was purposely built for unbiased unit testing. This `TopGeometry` model drew
    on open-source or platform-neutral architecture to allow access to base geometric objects including
    Points, Curves, Surfaces, and Geometry Collections `sfc`.

    -   The `liblwgeom` library uses the CUnit test framework for unit testing, which provides
        lightweight method to debug spatial operations.
    -   The `make` check command runs a set of regression tests for the entire PostGIS system, which
        helps verify the integrity of the installation and its dependencies, such as `PROJ4`in
        cartographic projections and `GEOS` for topological tests.

    ----------------------------------------------------------------------------------------------------

    +-------------------+------------------------------------------------------------------------------+
    | ISO Standard      | Components relevant to ART-TREES GHG audit verifications                     |
    +===================+==============================================================================+
    | ISO 27001,        | Two widely discussed ISO standards for data governance are ISO 27001 and ISO |
    |                   | 8000. ISO 27001 is a standard for Information Security Management Systems    |
    | ISO 8000          | (ISMS), while ISO 8000 focuses on data quality management. Implementing the  |
    |                   | ISO 27001 standard is a deliverable of information security management under |
    |                   | the IT governance program and not solely a data governance deliverable.      |
    |                   | However, data governance maturity is crucial for complying with ISO 27001    |
    |                   | and ensuring data security, confidentiality, and integrity in information    |
    |                   | management practices. ISO 8000 aims to ensure that data used in various      |
    |                   | contexts, such as business processes, analytics, and decision-making, meets  |
    |                   | certain quality standards. It covers all the key elements of data—Syntax,    |
    |                   | Provenance, Completion, Accuracy, and Certification—providing a standard to  |
    |                   | measure and certify data quality.                                            |
    +-------------------+------------------------------------------------------------------------------+
    | ISO 38505-1       | This is a standard for data governance that provides a set of guidelines for |
    |                   | the governance of data within an organization. It considers data governance  |
    |                   | as a subset of IT governance, which in turn is a subset of organizational    |
    |                   | governance, and defines clear responsibilities for the governing body and    |
    |                   | oversight mechanisms. At its core, it provides a model for evaluating,       |
    |                   | directing, and monitoring the handling and usage of data in an organization. |
    +-------------------+------------------------------------------------------------------------------+
    | ISO 22745         | This standard focuses on master data exchange between organizations. It      |
    |                   | specifies data requirements for messages containing master data, including   |
    |                   | syntax, semantic encoding, and portability. It is often used in conjunction  |
    |                   | with ISO 8000 to realize the benefits of assessing and improving data        |
    |                   | quality.                                                                     |
    +-------------------+------------------------------------------------------------------------------+
    | ISO 3166          | This standard defines codes for country names, which can be utilized for     |
    |                   | consistent external reference data in business applications to reduce time   |
    |                   | and effort in data integration and analytic tasks.                           |
    +-------------------+------------------------------------------------------------------------------+
    | ISO 11179         | This metadata registry (MDR) standard provides a framework for representing  |
    |                   | metadata for an organization to make data understandable and transferable.   |
    |                   | It provides guidance to software developers building metadata repositories.  |
    +-------------------+------------------------------------------------------------------------------+
    | ISO 27701         | This standard serves as a data privacy extension to ISO 27001, providing a   |
    |                   | framework for organizations to establish systems that facilitate compliance  |
    |                   | with data privacy regulations like GDPR.                                     |
    +-------------------+------------------------------------------------------------------------------+

    ----------------------------------------------------------------------------------------------------

    ### Appendix III: Replication in `renv` {#appendix-iii-replication-in-renv}

    `renv` profiles allow for managing different sets of package dependencies for various project
    contexts, such as separate environments for development, production, or demonstrations. To activate
    a specific `renv` profile, you have two primary options:

    ##### Step 1. Set a project profile

    To make a profile the default for future R sessions, run `renv::activate()` function. Upon
    restarting R, you will find `lockfile` path assigned to new project `renv` folder (
    `renv/profiles/demo-repo/`).

    ----------------------------------------------------------------------------------------------------

    ##### Step 2. Activate a temporary profile:

    To activate a profile for the current R session without making it the default, you can set the
    `RENV_PROFILE` environment variable.

    ----------------------------------------------------------------------------------------------------

    ##### Step 3. Check package dependencies

    Use the `Config/renv/profiles/<profile_name>/dependencies` and
    `Config/renv/profiles/<profile_name>/remotes` fields to check required packages and assign locations
    of remote repositories for those specific package builds. These environment fields can be declared
    in the `DESCRIPTION` file specific to that `renv` profile.

    ----------------------------------------------------------------------------------------------------

    ##### Step 4. Manage package dependencies

    -   To capture all packages currently installed in the runtime, while overlooking packages listed in
        existing environment variables, then run `renv::settings$snapshot.type("all")`.
    -   Alternatively, you can exclude certain packages from the installation using the
        `renv::settings$ignored.packages("lwgeom")` function. This proves useful with many debugging and
        versioning issues among new users.
    -   There is also option to manually load and test an `explicit` customized snapshot that overlooks
        default environment fields previously written into the runtime.

    ``` r
    # Activate 'demo-repo' profile and set as default for the project
    renv::activate(profile = "demo-repo")

    # To activate a 'dev' profile for a single session only
    Sys.setenv(RENV_PROFILE = "dev")

    # Defining dependencies in DESCRIPTION index
    Config/renv/profiles/shiny/dependencies: shiny, tidyverse
    Config/renv/profiles/shiny/remotes: rstudio/shiny, tidyverse/tidyverse

    # Enable 'explicit' snapshot function for the project
    renv::settings$snapshot.type("explicit")

    # Exclude package from current environment 
    renv::settings$ignored.packages("lwgeom")

    # deactivate the currently-activated project
    renv::deactivate()

##### Runtime Log

``` r
devtools::session_info()
```

    ─ Session info ───────────────────────────────────────────────────────────────
     setting  value
     version  R version 4.3.0 (2023-04-21)
     os       macOS 15.6
     system   aarch64, darwin20
     ui       X11
     language (EN)
     collate  en_US.UTF-8
     ctype    en_US.UTF-8
     tz       America/Vancouver
     date     2025-08-09
     pandoc   3.6.1 @ /usr/local/bin/ (via rmarkdown)
     quarto   1.6.40 @ /usr/local/bin/quarto

    ─ Packages ───────────────────────────────────────────────────────────────────
     package            * version    date (UTC) lib source
     abind              * 1.4-8      2024-09-12 [1] CRAN (R 4.3.3)
     ape                  5.8-1      2024-12-16 [1] CRAN (R 4.3.3)
     assertthat           0.2.1      2019-03-21 [1] CRAN (R 4.3.3)
     backports            1.5.0      2024-05-23 [1] CRAN (R 4.3.3)
     base64enc            0.1-3      2015-07-28 [1] CRAN (R 4.3.3)
     bit                  4.6.0      2025-03-06 [1] CRAN (R 4.3.3)
     bit64                4.6.0-1    2025-01-16 [1] CRAN (R 4.3.3)
     bitops               1.0-9      2024-10-03 [1] CRAN (R 4.3.3)
     boot                 1.3-31     2024-08-28 [1] CRAN (R 4.3.3)
     brew                 1.0-10     2023-12-16 [1] CRAN (R 4.3.3)
     brio                 1.1.5      2024-04-24 [1] CRAN (R 4.3.3)
     broom                1.0.8      2025-03-28 [1] CRAN (R 4.3.3)
     bslib              * 0.9.0      2025-01-30 [1] CRAN (R 4.3.3)
     cachem               1.1.0      2024-05-16 [1] CRAN (R 4.3.3)
     callr                3.7.6      2024-03-25 [1] CRAN (R 4.3.3)
     car                  3.1-3      2024-09-27 [1] CRAN (R 4.3.3)
     carData              3.0-5      2022-01-06 [1] CRAN (R 4.3.3)
     caret              * 7.0-1      2024-12-10 [1] CRAN (R 4.3.3)
     class                7.3-23     2025-01-01 [1] CRAN (R 4.3.3)
     classInt             0.4-11     2025-01-08 [1] CRAN (R 4.3.3)
     cli                  3.6.5      2025-04-23 [1] CRAN (R 4.3.3)
     coda                 0.19-4.1   2024-01-31 [1] CRAN (R 4.3.3)
     codetools            0.2-20     2024-03-31 [1] CRAN (R 4.3.1)
     colorspace           2.1-1      2024-07-26 [1] CRAN (R 4.3.3)
     cols4all           * 0.8        2024-10-16 [1] CRAN (R 4.3.3)
     contfrac             1.1-12     2018-05-17 [1] CRAN (R 4.3.3)
     coro                 1.1.0      2024-11-05 [1] CRAN (R 4.3.3)
     corpcor              1.6.10     2021-09-16 [1] CRAN (R 4.3.3)
     covr               * 3.6.4      2023-11-09 [1] CRAN (R 4.3.1)
     cowplot            * 1.2.0      2025-07-07 [1] CRAN (R 4.3.3)
     crayon               1.5.3      2024-06-20 [1] CRAN (R 4.3.3)
     crosstalk            1.2.1      2023-11-23 [1] CRAN (R 4.3.3)
     cubature             2.1.4      2025-06-02 [1] CRAN (R 4.3.3)
     data.table           1.17.8     2025-07-10 [1] CRAN (R 4.3.3)
     DBI                  1.2.3      2024-06-02 [1] CRAN (R 4.3.3)
     deldir               2.0-4      2024-02-28 [1] CRAN (R 4.3.3)
     deSolve              1.40       2023-11-27 [1] CRAN (R 4.3.3)
     devtools             2.4.5      2022-10-11 [1] CRAN (R 4.3.0)
     digest               0.6.37     2024-08-19 [1] CRAN (R 4.3.3)
     doParallel           1.0.17     2022-02-07 [1] CRAN (R 4.3.3)
     dplyr              * 1.1.4      2023-11-17 [1] CRAN (R 4.3.1)
     e1071              * 1.7-16     2024-09-16 [1] CRAN (R 4.3.3)
     easypackages         0.1.0      2016-12-05 [1] CRAN (R 4.3.0)
     elevatr            * 0.99.0     2023-09-12 [1] CRAN (R 4.3.0)
     ellipsis             0.3.2      2021-04-29 [1] CRAN (R 4.3.3)
     elliptic             1.4-0      2019-03-14 [1] CRAN (R 4.3.3)
     evaluate             1.0.4      2025-06-18 [1] CRAN (R 4.3.3)
     exactextractr      * 0.10.0     2023-09-20 [1] CRAN (R 4.3.1)
     farver               2.1.2      2024-05-13 [1] CRAN (R 4.3.3)
     fastmap              1.2.0      2024-05-15 [1] CRAN (R 4.3.3)
     forcats            * 1.0.0      2023-01-29 [1] CRAN (R 4.3.0)
     foreach              1.5.2      2022-02-02 [1] CRAN (R 4.3.3)
     Formula              1.2-5      2023-02-24 [1] CRAN (R 4.3.3)
     fs                   1.6.6      2025-04-12 [1] CRAN (R 4.3.3)
     future               1.40.0     2025-04-10 [1] CRAN (R 4.3.3)
     future.apply         1.11.3     2024-10-27 [1] CRAN (R 4.3.3)
     FuzzyNumbers         0.4-7      2021-11-15 [1] CRAN (R 4.3.3)
     FuzzyNumbers.Ext.2   3.2        2017-09-05 [1] CRAN (R 4.3.3)
     gdalcubes          * 0.7.1      2025-03-20 [1] CRAN (R 4.3.3)
     gdalUtilities      * 1.2.5      2023-08-10 [1] CRAN (R 4.3.0)
     generics             0.1.4      2025-05-09 [1] CRAN (R 4.3.3)
     geojsonsf          * 2.0.3      2022-05-30 [1] CRAN (R 4.3.3)
     geos               * 0.2.4      2023-11-30 [1] CRAN (R 4.3.3)
     ggmap              * 4.0.1      2025-04-07 [1] CRAN (R 4.3.3)
     ggplot2            * 3.5.2      2025-04-09 [1] CRAN (R 4.3.3)
     ggplotify          * 0.1.2      2023-08-09 [1] CRAN (R 4.3.0)
     ggpubr             * 0.6.1      2025-06-27 [1] CRAN (R 4.3.3)
     ggrepel            * 0.9.6      2024-09-07 [1] CRAN (R 4.3.3)
     ggsignif             0.6.4      2022-10-13 [1] CRAN (R 4.3.0)
     ggspatial          * 1.1.9      2023-08-17 [1] CRAN (R 4.3.0)
     ggstats            * 0.10.0     2025-07-02 [1] CRAN (R 4.3.3)
     giscoR             * 0.6.1      2025-01-27 [1] CRAN (R 4.3.3)
     globals              0.17.0     2025-04-16 [1] CRAN (R 4.3.3)
     glue                 1.8.0      2024-09-30 [1] CRAN (R 4.3.3)
     gmm                  1.8        2023-06-06 [1] CRAN (R 4.3.3)
     gower                1.0.2      2024-12-17 [1] CRAN (R 4.3.3)
     gridExtra            2.3        2017-09-09 [1] CRAN (R 4.3.3)
     gridGraphics         0.5-1      2020-12-13 [1] CRAN (R 4.3.3)
     gtable               0.3.6      2024-10-25 [1] CRAN (R 4.3.3)
     hardhat              1.4.1      2025-01-31 [1] CRAN (R 4.3.3)
     hdf5r              * 1.3.12     2025-01-20 [1] CRAN (R 4.3.3)
     hexbin               1.28.5     2024-11-13 [1] CRAN (R 4.3.3)
     hms                  1.1.3      2023-03-21 [1] CRAN (R 4.3.0)
     htmltools          * 0.5.8.1    2024-04-04 [1] CRAN (R 4.3.3)
     htmlwidgets          1.6.4      2023-12-06 [1] CRAN (R 4.3.1)
     httpuv               1.6.16     2025-04-16 [1] CRAN (R 4.3.3)
     httr               * 1.4.7      2023-08-15 [1] CRAN (R 4.3.0)
     httr2              * 1.1.2      2025-03-26 [1] CRAN (R 4.3.3)
     hypergeo             1.2-14     2025-03-24 [1] CRAN (R 4.3.3)
     interp               1.1-6      2024-01-26 [1] CRAN (R 4.3.3)
     ipred                0.9-15     2024-07-18 [1] CRAN (R 4.3.3)
     iterators            1.0.14     2022-02-05 [1] CRAN (R 4.3.3)
     jpeg                 0.1-11     2025-03-21 [1] CRAN (R 4.3.3)
     jquerylib            0.1.4      2021-04-26 [1] CRAN (R 4.3.3)
     jsonlite           * 2.0.0      2025-03-27 [1] CRAN (R 4.3.3)
     KernSmooth           2.23-26    2025-01-01 [1] CRAN (R 4.3.3)
     knitr              * 1.50       2025-03-16 [1] CRAN (R 4.3.3)
     later                1.4.2      2025-04-08 [1] CRAN (R 4.3.3)
     lattice            * 0.22-7     2025-04-02 [1] CRAN (R 4.3.3)
     latticeExtra         0.6-30     2022-07-04 [1] CRAN (R 4.3.3)
     lava                 1.8.1      2025-01-12 [1] CRAN (R 4.3.3)
     lazyeval             0.2.2      2019-03-15 [1] CRAN (R 4.3.3)
     leafem             * 0.2.4      2025-05-01 [1] CRAN (R 4.3.3)
     leafgl             * 0.2.2      2024-11-13 [1] CRAN (R 4.3.3)
     leaflegend           1.2.1      2024-05-09 [1] CRAN (R 4.3.3)
     leaflet            * 2.2.2      2024-03-26 [1] CRAN (R 4.3.1)
     leafpop              0.1.0      2021-05-22 [1] CRAN (R 4.3.0)
     leafsync             0.1.0      2019-03-05 [1] CRAN (R 4.3.0)
     libgeos            * 3.11.1-3   2025-03-19 [1] CRAN (R 4.3.3)
     lifecycle            1.0.4      2023-11-07 [1] CRAN (R 4.3.3)
     listenv              0.9.1      2024-01-29 [1] CRAN (R 4.3.3)
     logger               0.4.0      2024-10-22 [1] CRAN (R 4.3.3)
     lubridate          * 1.9.4      2024-12-08 [1] CRAN (R 4.3.3)
     luz                * 0.4.0      2023-04-17 [1] CRAN (R 4.3.0)
     lwgeom             * 0.2-14     2024-02-21 [1] CRAN (R 4.3.1)
     magrittr             2.0.3      2022-03-30 [1] CRAN (R 4.3.3)
     maptiles           * 0.10.0     2025-05-07 [1] CRAN (R 4.3.3)
     mapview            * 2.11.2     2023-10-13 [1] CRAN (R 4.3.1)
     MASS                 7.3-58.4   2023-03-07 [1] CRAN (R 4.3.0)
     Matrix               1.5-4      2023-04-04 [1] CRAN (R 4.3.0)
     matrixcalc           1.0-6      2022-09-14 [1] CRAN (R 4.3.3)
     MCMCglmm             2.36       2024-05-06 [1] CRAN (R 4.3.1)
     memoise              2.0.1      2021-11-26 [1] CRAN (R 4.3.3)
     mgcv               * 1.9-1      2023-12-21 [1] CRAN (R 4.3.3)
     microbenchmark       1.5.0      2024-09-04 [1] CRAN (R 4.3.3)
     mime                 0.13       2025-03-17 [1] CRAN (R 4.3.3)
     miniUI               0.1.2      2025-04-17 [1] CRAN (R 4.3.3)
     ModelMetrics         1.2.2.2    2020-03-17 [1] CRAN (R 4.3.3)
     MomTrunc             6.1        2024-10-28 [1] CRAN (R 4.3.3)
     mvtnorm              1.3-3      2025-01-10 [1] CRAN (R 4.3.3)
     ncdf4              * 1.24       2025-03-25 [1] CRAN (R 4.3.3)
     nlme               * 3.1-168    2025-03-31 [1] CRAN (R 4.3.3)
     nnet               * 7.3-20     2025-01-01 [1] CRAN (R 4.3.3)
     openxlsx           * 4.2.8      2025-01-25 [1] CRAN (R 4.3.3)
     parallelly           1.45.0     2025-06-02 [1] CRAN (R 4.3.3)
     pillar               1.11.0     2025-07-04 [1] CRAN (R 4.3.3)
     pkgbuild             1.4.8      2025-05-26 [1] CRAN (R 4.3.3)
     pkgconfig            2.0.3      2019-09-22 [1] CRAN (R 4.3.3)
     pkgload              1.4.0      2024-06-28 [1] CRAN (R 4.3.3)
     plotly             * 4.11.0     2025-06-19 [1] CRAN (R 4.3.3)
     plyr                 1.8.9      2023-10-02 [1] CRAN (R 4.3.3)
     png                  0.1-8      2022-11-29 [1] CRAN (R 4.3.3)
     prettyunits          1.2.0      2023-09-24 [1] CRAN (R 4.3.3)
     pROC                 1.18.5     2023-11-01 [1] CRAN (R 4.3.3)
     processx             3.8.6      2025-02-21 [1] CRAN (R 4.3.3)
     prodlim              2025.04.28 2025-04-28 [1] CRAN (R 4.3.3)
     profvis              0.4.0      2024-09-20 [1] CRAN (R 4.3.3)
     progress             1.2.3      2023-12-06 [1] CRAN (R 4.3.1)
     progressr            0.15.1     2024-11-22 [1] CRAN (R 4.3.3)
     promises             1.3.3      2025-05-29 [1] CRAN (R 4.3.3)
     proxy                0.4-27     2022-06-09 [1] CRAN (R 4.3.3)
     ps                   1.9.1      2025-04-12 [1] CRAN (R 4.3.3)
     purrr              * 1.0.4      2025-02-05 [1] CRAN (R 4.3.3)
     R6                   2.6.1      2025-02-15 [1] CRAN (R 4.3.3)
     randomForest       * 4.7-1.2    2024-09-22 [1] CRAN (R 4.3.3)
     rappdirs             0.3.3      2021-01-31 [1] CRAN (R 4.3.3)
     raster             * 3.6-32     2025-03-28 [1] CRAN (R 4.3.3)
     rasterVis          * 0.51.6     2023-11-01 [1] CRAN (R 4.3.3)
     rayshader          * 0.37.3     2024-02-21 [1] CRAN (R 4.3.1)
     rbibutils            2.3        2024-10-04 [1] CRAN (R 4.3.3)
     RColorBrewer       * 1.1-3      2022-04-03 [1] CRAN (R 4.3.3)
     Rcpp               * 1.1.0      2025-07-02 [1] CRAN (R 4.3.3)
     RcppArmadillo      * 14.6.0-1   2025-07-02 [1] CRAN (R 4.3.3)
     RcppCensSpatial    * 0.3.0      2022-06-27 [1] CRAN (R 4.3.0)
     RcppEigen          * 0.3.4.0.2  2024-08-24 [1] CRAN (R 4.3.3)
     RcppParallel       * 5.1.10     2025-01-24 [1] CRAN (R 4.3.3)
     RCurl                1.98-1.17  2025-03-22 [1] CRAN (R 4.3.3)
     Rdpack               2.6.4      2025-04-09 [1] CRAN (R 4.3.3)
     readr              * 2.1.5      2024-01-10 [1] CRAN (R 4.3.1)
     recipes              1.3.1      2025-05-21 [1] CRAN (R 4.3.3)
     relliptical          1.3.0      2024-02-07 [1] CRAN (R 4.3.1)
     remotes              2.5.0      2024-03-17 [1] CRAN (R 4.3.3)
     renv               * 1.1.4      2025-03-20 [1] CRAN (R 4.3.3)
     reshape2             1.4.4      2020-04-09 [1] CRAN (R 4.3.0)
     rex                  1.2.1      2021-11-26 [1] CRAN (R 4.3.3)
     rgl                * 1.3.24     2025-06-25 [1] CRAN (R 4.3.3)
     rlang                1.1.6      2025-04-11 [1] CRAN (R 4.3.3)
     rmarkdown          * 2.29       2024-11-04 [1] CRAN (R 4.3.3)
     rpart                4.1.24     2025-01-07 [1] CRAN (R 4.3.3)
     rstatix              0.7.2      2023-02-01 [1] CRAN (R 4.3.0)
     RStoolbox          * 1.0.2.1    2025-02-03 [1] CRAN (R 4.3.3)
     rstudioapi           0.17.1     2024-10-22 [1] CRAN (R 4.3.3)
     rts                * 1.1-14     2023-10-01 [1] CRAN (R 4.3.3)
     Ryacas0              0.4.4      2023-01-12 [1] CRAN (R 4.3.3)
     s2                 * 1.1.9      2025-05-23 [1] CRAN (R 4.3.3)
     sandwich             3.1-1      2024-09-15 [1] CRAN (R 4.3.3)
     sass                 0.4.10     2025-04-11 [1] CRAN (R 4.3.3)
     satellite            1.0.5      2024-02-10 [1] CRAN (R 4.3.3)
     scales             * 1.4.0      2025-04-24 [1] CRAN (R 4.3.3)
     sessioninfo          1.2.3      2025-02-05 [1] CRAN (R 4.3.3)
     settings             0.2.7      2021-05-07 [1] CRAN (R 4.3.3)
     sf                 * 1.0-21     2025-05-15 [1] CRAN (R 4.3.3)
     shiny                1.11.1     2025-07-03 [1] CRAN (R 4.3.3)
     shinyWidgets         0.9.0      2025-02-21 [1] CRAN (R 4.3.3)
     sp                 * 2.2-0      2025-02-01 [1] CRAN (R 4.3.3)
     spacesXYZ            1.6-0      2025-06-06 [1] CRAN (R 4.3.3)
     spData             * 2.3.4      2025-01-08 [1] CRAN (R 4.3.3)
     spdep              * 1.3-13     2025-06-10 [1] CRAN (R 4.3.3)
     stars              * 0.6-8      2025-02-01 [1] CRAN (R 4.3.3)
     StempCens            1.2.0      2025-06-11 [1] CRAN (R 4.3.3)
     stringi              1.8.7      2025-03-27 [1] CRAN (R 4.3.3)
     stringr            * 1.5.1      2023-11-14 [1] CRAN (R 4.3.1)
     survival             3.8-3      2024-12-17 [1] CRAN (R 4.3.3)
     svglite              2.2.1      2025-05-12 [1] CRAN (R 4.3.3)
     systemfonts          1.2.3      2025-04-30 [1] CRAN (R 4.3.3)
     tensorA              0.36.2.1   2023-12-13 [1] CRAN (R 4.3.3)
     terra              * 1.8-54     2025-06-01 [1] CRAN (R 4.3.3)
     terrainr           * 0.7.5      2023-10-04 [1] CRAN (R 4.3.1)
     testthat           * 3.2.3      2025-01-13 [1] CRAN (R 4.3.3)
     textshaping          1.0.1      2025-05-01 [1] CRAN (R 4.3.3)
     tibble             * 3.3.0      2025-06-08 [1] CRAN (R 4.3.3)
     tidyr              * 1.3.1      2024-01-24 [1] CRAN (R 4.3.1)
     tidyselect           1.2.1      2024-03-11 [1] CRAN (R 4.3.1)
     tidyterra          * 0.7.2      2025-04-14 [1] CRAN (R 4.3.3)
     tidyverse          * 2.0.0      2023-02-22 [1] CRAN (R 4.3.0)
     timechange           0.3.0      2024-01-18 [1] CRAN (R 4.3.3)
     timeDate             4041.110   2024-09-22 [1] CRAN (R 4.3.3)
     tlrmvnmvt            1.1.2      2022-06-09 [1] CRAN (R 4.3.3)
     tmvtnorm             1.6        2023-12-05 [1] CRAN (R 4.3.3)
     torch                0.15.1     2025-07-10 [1] CRAN (R 4.3.3)
     tzdb                 0.5.0      2025-03-15 [1] CRAN (R 4.3.3)
     unifir               0.2.4      2024-02-01 [1] CRAN (R 4.3.3)
     units                0.8-7      2025-03-11 [1] CRAN (R 4.3.3)
     urlchecker           1.0.1      2021-11-30 [1] CRAN (R 4.3.3)
     usethis              3.1.0      2024-11-26 [1] CRAN (R 4.3.3)
     uuid                 1.2-1      2024-07-29 [1] CRAN (R 4.3.3)
     vctrs                0.6.5      2023-12-01 [1] CRAN (R 4.3.3)
     viridisLite          0.4.2      2023-05-02 [1] CRAN (R 4.3.3)
     withr                3.0.2      2024-10-28 [1] CRAN (R 4.3.3)
     wk                   0.9.4      2024-10-11 [1] CRAN (R 4.3.3)
     xfun                 0.52       2025-04-02 [1] CRAN (R 4.3.3)
     xgboost            * 1.7.11.1   2025-05-15 [1] CRAN (R 4.3.3)
     XML                  3.99-0.18  2025-01-01 [1] CRAN (R 4.3.3)
     xml2                 1.3.8      2025-03-14 [1] CRAN (R 4.3.3)
     xtable               1.8-4      2019-04-21 [1] CRAN (R 4.3.3)
     xts                * 0.14.1     2024-10-15 [1] CRAN (R 4.3.3)
     yaml                 2.3.10     2024-07-26 [1] CRAN (R 4.3.3)
     yulab.utils          0.2.0      2025-01-29 [1] CRAN (R 4.3.3)
     zeallot              0.2.0      2025-05-27 [1] CRAN (R 4.3.3)
     zip                  2.3.3      2025-05-13 [1] CRAN (R 4.3.3)
     zoo                * 1.8-14     2025-04-10 [1] CRAN (R 4.3.3)

     [1] /Library/Frameworks/R.framework/Versions/4.3-arm64/Resources/library
     * ── Packages attached to the search path.

    ──────────────────────────────────────────────────────────────────────────────

    ─ Session info ───────────────────────────────────────────────────────────────
     setting  value
     version  R version 4.3.0 (2023-04-21)
     os       macOS 15.6
     system   aarch64, darwin20
     ui       X11
     language (EN)
     collate  en_US.UTF-8
     ctype    en_US.UTF-8
     tz       America/Vancouver
     date     2025-08-08
     pandoc   3.6.1 @ /usr/local/bin/ (via rmarkdown)
     quarto   1.6.40 @ /usr/local/bin/quarto

    ─ Packages ───────────────────────────────────────────────────────────────────
     ! package            * version    date (UTC) lib source
       abind              * 1.4-8      2024-09-12 [1] CRAN (R 4.3.3)
       ape                  5.8-1      2024-12-16 [1] CRAN (R 4.3.3)
     P assertthat           0.2.1      2019-03-21 [?] CRAN (R 4.3.3)
       backports            1.5.0      2024-05-23 [1] CRAN (R 4.3.3)
     P base64enc            0.1-3      2015-07-28 [?] CRAN (R 4.3.3)
       bit                  4.6.0      2025-03-06 [1] CRAN (R 4.3.3)
       bit64                4.6.0-1    2025-01-16 [1] CRAN (R 4.3.3)
       bitops               1.0-9      2024-10-03 [1] CRAN (R 4.3.3)
     P boot                 1.3-31     2024-08-28 [?] CRAN (R 4.3.3)
     P brew                 1.0-10     2023-12-16 [?] CRAN (R 4.3.3)
     P brio                 1.1.5      2024-04-24 [?] CRAN (R 4.3.3)
       broom                1.0.8      2025-03-28 [1] CRAN (R 4.3.3)
     P bslib              * 0.9.0      2025-01-30 [?] CRAN (R 4.3.3)
     P cachem               1.1.0      2024-05-16 [?] CRAN (R 4.3.3)
     P callr                3.7.6      2024-03-25 [?] CRAN (R 4.3.3)
       car                  3.1-3      2024-09-27 [1] CRAN (R 4.3.3)
       carData              3.0-5      2022-01-06 [1] CRAN (R 4.3.3)
       caret              * 7.0-1      2024-12-10 [1] CRAN (R 4.3.3)
     P class                7.3-23     2025-01-01 [?] CRAN (R 4.3.3)
       classInt             0.4-11     2025-01-08 [1] CRAN (R 4.3.3)
     P cli                  3.6.5      2025-04-23 [?] CRAN (R 4.3.3)
       coda                 0.19-4.1   2024-01-31 [1] CRAN (R 4.3.3)
     P codetools            0.2-20     2024-03-31 [?] CRAN (R 4.3.1)
       colorspace           2.1-1      2024-07-26 [1] CRAN (R 4.3.3)
       cols4all           * 0.8        2024-10-16 [1] CRAN (R 4.3.3)
       contfrac             1.1-12     2018-05-17 [1] CRAN (R 4.3.3)
       coro                 1.1.0      2024-11-05 [1] CRAN (R 4.3.3)
       corpcor              1.6.10     2021-09-16 [1] CRAN (R 4.3.3)
       covr               * 3.6.4      2023-11-09 [1] CRAN (R 4.3.1)
       cowplot            * 1.2.0      2025-07-07 [1] CRAN (R 4.3.3)
     P crayon               1.5.3      2024-06-20 [?] CRAN (R 4.3.3)
       crosstalk            1.2.1      2023-11-23 [1] CRAN (R 4.3.3)
       cubature             2.1.4      2025-06-02 [1] CRAN (R 4.3.3)
       data.table           1.17.8     2025-07-10 [1] CRAN (R 4.3.3)
       DBI                  1.2.3      2024-06-02 [1] CRAN (R 4.3.3)
       deldir               2.0-4      2024-02-28 [1] CRAN (R 4.3.3)
       deSolve              1.40       2023-11-27 [1] CRAN (R 4.3.3)
     P devtools             2.4.5      2022-10-11 [?] CRAN (R 4.3.0)
     P digest               0.6.37     2024-08-19 [?] CRAN (R 4.3.3)
       doParallel           1.0.17     2022-02-07 [1] CRAN (R 4.3.3)
       dplyr              * 1.1.4      2023-11-17 [1] CRAN (R 4.3.1)
       e1071              * 1.7-16     2024-09-16 [1] CRAN (R 4.3.3)
     P easypackages         0.1.0      2016-12-05 [?] CRAN (R 4.3.0)
       elevatr            * 0.99.0     2023-09-12 [1] CRAN (R 4.3.0)
     P ellipsis             0.3.2      2021-04-29 [?] CRAN (R 4.3.3)
       elliptic             1.4-0      2019-03-14 [1] CRAN (R 4.3.3)
     P evaluate             1.0.4      2025-06-18 [?] CRAN (R 4.3.3)
       exactextractr      * 0.10.0     2023-09-20 [1] CRAN (R 4.3.1)
       farver               2.1.2      2024-05-13 [1] CRAN (R 4.3.3)
     P fastmap              1.2.0      2024-05-15 [?] CRAN (R 4.3.3)
       forcats            * 1.0.0      2023-01-29 [1] CRAN (R 4.3.0)
       foreach              1.5.2      2022-02-02 [1] CRAN (R 4.3.3)
       Formula              1.2-5      2023-02-24 [1] CRAN (R 4.3.3)
     P fs                   1.6.6      2025-04-12 [?] CRAN (R 4.3.3)
       future               1.40.0     2025-04-10 [1] CRAN (R 4.3.3)
       future.apply         1.11.3     2024-10-27 [1] CRAN (R 4.3.3)
       FuzzyNumbers         0.4-7      2021-11-15 [1] CRAN (R 4.3.3)
       FuzzyNumbers.Ext.2   3.2        2017-09-05 [1] CRAN (R 4.3.3)
       gdalcubes          * 0.7.1      2025-03-20 [1] CRAN (R 4.3.3)
       gdalUtilities      * 1.2.5      2023-08-10 [1] CRAN (R 4.3.0)
       generics             0.1.4      2025-05-09 [1] CRAN (R 4.3.3)
       geojsonsf          * 2.0.3      2022-05-30 [1] CRAN (R 4.3.3)
       geos               * 0.2.4      2023-11-30 [1] CRAN (R 4.3.3)
       ggmap              * 4.0.1      2025-04-07 [1] CRAN (R 4.3.3)
       ggplot2            * 3.5.2      2025-04-09 [1] CRAN (R 4.3.3)
       ggplotify          * 0.1.2      2023-08-09 [1] CRAN (R 4.3.0)
       ggpubr             * 0.6.1      2025-06-27 [1] CRAN (R 4.3.3)
       ggrepel            * 0.9.6      2024-09-07 [1] CRAN (R 4.3.3)
       ggsignif             0.6.4      2022-10-13 [1] CRAN (R 4.3.0)
       ggspatial          * 1.1.9      2023-08-17 [1] CRAN (R 4.3.0)
       ggstats            * 0.10.0     2025-07-02 [1] CRAN (R 4.3.3)
       giscoR             * 0.6.1      2025-01-27 [1] CRAN (R 4.3.3)
       globals              0.17.0     2025-04-16 [1] CRAN (R 4.3.3)
     P glue                 1.8.0      2024-09-30 [?] CRAN (R 4.3.3)
       gmm                  1.8        2023-06-06 [1] CRAN (R 4.3.3)
       gower                1.0.2      2024-12-17 [1] CRAN (R 4.3.3)
       gridExtra            2.3        2017-09-09 [1] CRAN (R 4.3.3)
       gridGraphics         0.5-1      2020-12-13 [1] CRAN (R 4.3.3)
       gtable               0.3.6      2024-10-25 [1] CRAN (R 4.3.3)
       hardhat              1.4.1      2025-01-31 [1] CRAN (R 4.3.3)
       hdf5r              * 1.3.12     2025-01-20 [1] CRAN (R 4.3.3)
       hexbin               1.28.5     2024-11-13 [1] CRAN (R 4.3.3)
       hms                  1.1.3      2023-03-21 [1] CRAN (R 4.3.0)
     P htmltools          * 0.5.8.1    2024-04-04 [?] CRAN (R 4.3.3)
     P htmlwidgets          1.6.4      2023-12-06 [?] CRAN (R 4.3.1)
     P httpuv               1.6.16     2025-04-16 [?] CRAN (R 4.3.3)
       httr               * 1.4.7      2023-08-15 [1] CRAN (R 4.3.0)
     P httr2              * 1.2.1      2025-07-22 [?] CRAN (R 4.3.0)
       hypergeo             1.2-14     2025-03-24 [1] CRAN (R 4.3.3)
       interp               1.1-6      2024-01-26 [1] CRAN (R 4.3.3)
       ipred                0.9-15     2024-07-18 [1] CRAN (R 4.3.3)
       iterators            1.0.14     2022-02-05 [1] CRAN (R 4.3.3)
       jpeg                 0.1-11     2025-03-21 [1] CRAN (R 4.3.3)
     P jquerylib            0.1.4      2021-04-26 [?] CRAN (R 4.3.3)
     P jsonlite           * 2.0.0      2025-03-27 [?] CRAN (R 4.3.3)
     P KernSmooth           2.23-26    2025-01-01 [?] CRAN (R 4.3.3)
     P knitr                1.50       2025-03-16 [?] CRAN (R 4.3.3)
     P later                1.4.2      2025-04-08 [?] CRAN (R 4.3.3)
     P lattice            * 0.22-7     2025-04-02 [?] CRAN (R 4.3.3)
       latticeExtra         0.6-30     2022-07-04 [1] CRAN (R 4.3.3)
       lava                 1.8.1      2025-01-12 [1] CRAN (R 4.3.3)
       lazyeval             0.2.2      2019-03-15 [1] CRAN (R 4.3.3)
       leafem             * 0.2.4      2025-05-01 [1] CRAN (R 4.3.3)
       leafgl             * 0.2.2      2024-11-13 [1] CRAN (R 4.3.3)
       leaflegend           1.2.1      2024-05-09 [1] CRAN (R 4.3.3)
       leaflet            * 2.2.2      2024-03-26 [1] CRAN (R 4.3.1)
       leafpop              0.1.0      2021-05-22 [1] CRAN (R 4.3.0)
       leafsync             0.1.0      2019-03-05 [1] CRAN (R 4.3.0)
       libgeos            * 3.11.1-3   2025-03-19 [1] CRAN (R 4.3.3)
     P lifecycle            1.0.4      2023-11-07 [?] CRAN (R 4.3.3)
       listenv              0.9.1      2024-01-29 [1] CRAN (R 4.3.3)
       logger               0.4.0      2024-10-22 [1] CRAN (R 4.3.3)
       lubridate          * 1.9.4      2024-12-08 [1] CRAN (R 4.3.3)
       luz                * 0.4.0      2023-04-17 [1] CRAN (R 4.3.0)
       lwgeom             * 0.2-14     2024-02-21 [1] CRAN (R 4.3.1)
     P magrittr             2.0.3      2022-03-30 [?] CRAN (R 4.3.3)
       maptiles           * 0.10.0     2025-05-07 [1] CRAN (R 4.3.3)
       mapview            * 2.11.2     2023-10-13 [1] CRAN (R 4.3.1)
     P MASS                 7.3-58.4   2023-03-07 [?] CRAN (R 4.3.0)
     P Matrix               1.5-4      2023-04-04 [?] CRAN (R 4.3.0)
       matrixcalc           1.0-6      2022-09-14 [1] CRAN (R 4.3.3)
       MCMCglmm             2.36       2024-05-06 [1] CRAN (R 4.3.1)
     P memoise              2.0.1      2021-11-26 [?] CRAN (R 4.3.3)
     P mgcv               * 1.9-1      2023-12-21 [?] CRAN (R 4.3.3)
       microbenchmark       1.5.0      2024-09-04 [1] CRAN (R 4.3.3)
     P mime                 0.13       2025-03-17 [?] CRAN (R 4.3.3)
     P miniUI               0.1.2      2025-04-17 [?] CRAN (R 4.3.3)
       ModelMetrics         1.2.2.2    2020-03-17 [1] CRAN (R 4.3.3)
       MomTrunc             6.1        2024-10-28 [1] CRAN (R 4.3.3)
       mvtnorm              1.3-3      2025-01-10 [1] CRAN (R 4.3.3)
       ncdf4              * 1.24       2025-03-25 [1] CRAN (R 4.3.3)
     P nlme               * 3.1-168    2025-03-31 [?] CRAN (R 4.3.3)
     P nnet               * 7.3-20     2025-01-01 [?] CRAN (R 4.3.3)
       openxlsx           * 4.2.8      2025-01-25 [1] CRAN (R 4.3.3)
       parallelly           1.45.0     2025-06-02 [1] CRAN (R 4.3.3)
     P pillar               1.11.0     2025-07-04 [?] CRAN (R 4.3.3)
     P pkgbuild             1.4.8      2025-05-26 [?] CRAN (R 4.3.3)
     P pkgconfig            2.0.3      2019-09-22 [?] CRAN (R 4.3.3)
     P pkgload              1.4.0      2024-06-28 [?] CRAN (R 4.3.3)
       plotly             * 4.11.0     2025-06-19 [1] CRAN (R 4.3.3)
       plyr                 1.8.9      2023-10-02 [1] CRAN (R 4.3.3)
       png                  0.1-8      2022-11-29 [1] CRAN (R 4.3.3)
     P prettyunits          1.2.0      2023-09-24 [?] CRAN (R 4.3.3)
       pROC                 1.18.5     2023-11-01 [1] CRAN (R 4.3.3)
     P processx             3.8.6      2025-02-21 [?] CRAN (R 4.3.3)
       prodlim              2025.04.28 2025-04-28 [1] CRAN (R 4.3.3)
     P profvis              0.4.0      2024-09-20 [?] CRAN (R 4.3.3)
       progress             1.2.3      2023-12-06 [1] CRAN (R 4.3.1)
       progressr            0.15.1     2024-11-22 [1] CRAN (R 4.3.3)
     P promises             1.3.3      2025-05-29 [?] CRAN (R 4.3.3)
       proxy                0.4-27     2022-06-09 [1] CRAN (R 4.3.3)
     P ps                   1.9.1      2025-04-12 [?] CRAN (R 4.3.3)
     P purrr              * 1.1.0      2025-07-10 [?] CRAN (R 4.3.0)
     P R6                   2.6.1      2025-02-15 [?] CRAN (R 4.3.3)
       randomForest       * 4.7-1.2    2024-09-22 [1] CRAN (R 4.3.3)
     P rappdirs             0.3.3      2021-01-31 [?] CRAN (R 4.3.3)
       raster             * 3.6-32     2025-03-28 [1] CRAN (R 4.3.3)
       rasterVis          * 0.51.6     2023-11-01 [1] CRAN (R 4.3.3)
       rayshader          * 0.37.3     2024-02-21 [1] CRAN (R 4.3.1)
       rbibutils            2.3        2024-10-04 [1] CRAN (R 4.3.3)
       RColorBrewer       * 1.1-3      2022-04-03 [1] CRAN (R 4.3.3)
     P Rcpp               * 1.1.0      2025-07-02 [?] CRAN (R 4.3.3)
       RcppArmadillo      * 14.6.0-1   2025-07-02 [1] CRAN (R 4.3.3)
       RcppCensSpatial    * 0.3.0      2022-06-27 [1] CRAN (R 4.3.0)
       RcppEigen          * 0.3.4.0.2  2024-08-24 [1] CRAN (R 4.3.3)
       RcppParallel       * 5.1.10     2025-01-24 [1] CRAN (R 4.3.3)
       RCurl                1.98-1.17  2025-03-22 [1] CRAN (R 4.3.3)
       Rdpack               2.6.4      2025-04-09 [1] CRAN (R 4.3.3)
       readr              * 2.1.5      2024-01-10 [1] CRAN (R 4.3.1)
       recipes              1.3.1      2025-05-21 [1] CRAN (R 4.3.3)
       relliptical          1.3.0      2024-02-07 [1] CRAN (R 4.3.1)
     P remotes              2.5.0      2024-03-17 [?] CRAN (R 4.3.3)
       renv               * 1.1.4      2025-03-20 [1] CRAN (R 4.3.3)
       reshape2             1.4.4      2020-04-09 [1] CRAN (R 4.3.0)
       rex                  1.2.1      2021-11-26 [1] CRAN (R 4.3.3)
       rgl                * 1.3.24     2025-06-25 [1] CRAN (R 4.3.3)
     P rlang                1.1.6      2025-04-11 [?] CRAN (R 4.3.3)
     P rmarkdown          * 2.29       2024-11-04 [?] CRAN (R 4.3.3)
     P rpart                4.1.24     2025-01-07 [?] CRAN (R 4.3.3)
       rstatix              0.7.2      2023-02-01 [1] CRAN (R 4.3.0)
       RStoolbox          * 1.0.2.1    2025-02-03 [1] CRAN (R 4.3.3)
     P rstudioapi           0.17.1     2024-10-22 [?] CRAN (R 4.3.3)
       rts                * 1.1-14     2023-10-01 [1] CRAN (R 4.3.3)
       Ryacas0              0.4.4      2023-01-12 [1] CRAN (R 4.3.3)
       s2                 * 1.1.9      2025-05-23 [1] CRAN (R 4.3.3)
       sandwich             3.1-1      2024-09-15 [1] CRAN (R 4.3.3)
     P sass                 0.4.10     2025-04-11 [?] CRAN (R 4.3.3)
       satellite            1.0.5      2024-02-10 [1] CRAN (R 4.3.3)
       scales             * 1.4.0      2025-04-24 [1] CRAN (R 4.3.3)
     P sessioninfo          1.2.3      2025-02-05 [?] CRAN (R 4.3.3)
       settings             0.2.7      2021-05-07 [1] CRAN (R 4.3.3)
       sf                 * 1.0-21     2025-05-15 [1] CRAN (R 4.3.3)
     P shiny                1.11.1     2025-07-03 [?] CRAN (R 4.3.3)
       shinyWidgets         0.9.0      2025-02-21 [1] CRAN (R 4.3.3)
       sp                 * 2.2-0      2025-02-01 [1] CRAN (R 4.3.3)
       spacesXYZ            1.6-0      2025-06-06 [1] CRAN (R 4.3.3)
       spData             * 2.3.4      2025-01-08 [1] CRAN (R 4.3.3)
       spdep              * 1.3-13     2025-06-10 [1] CRAN (R 4.3.3)
       stars              * 0.6-8      2025-02-01 [1] CRAN (R 4.3.3)
       StempCens            1.2.0      2025-06-11 [1] CRAN (R 4.3.3)
     P stringi              1.8.7      2025-03-27 [?] CRAN (R 4.3.3)
     P stringr            * 1.5.1      2023-11-14 [?] CRAN (R 4.3.1)
     P survival             3.8-3      2024-12-17 [?] CRAN (R 4.3.3)
       svglite              2.2.1      2025-05-12 [1] CRAN (R 4.3.3)
     P systemfonts          1.2.3      2025-04-30 [?] CRAN (R 4.3.3)
       tensorA              0.36.2.1   2023-12-13 [1] CRAN (R 4.3.3)
       terra              * 1.8-54     2025-06-01 [1] CRAN (R 4.3.3)
       terrainr           * 0.7.5      2023-10-04 [1] CRAN (R 4.3.1)
     P testthat           * 3.2.3      2025-01-13 [?] CRAN (R 4.3.3)
     P textshaping          1.0.1      2025-05-01 [?] CRAN (R 4.3.3)
     P tibble             * 3.3.0      2025-06-08 [?] CRAN (R 4.3.3)
       tidyr              * 1.3.1      2024-01-24 [1] CRAN (R 4.3.1)
       tidyselect           1.2.1      2024-03-11 [1] CRAN (R 4.3.1)
       tidyterra          * 0.7.2      2025-04-14 [1] CRAN (R 4.3.3)
       tidyverse          * 2.0.0      2023-02-22 [1] CRAN (R 4.3.0)
       timechange           0.3.0      2024-01-18 [1] CRAN (R 4.3.3)
       timeDate             4041.110   2024-09-22 [1] CRAN (R 4.3.3)
       tlrmvnmvt            1.1.2      2022-06-09 [1] CRAN (R 4.3.3)
       tmvtnorm             1.6        2023-12-05 [1] CRAN (R 4.3.3)
       torch                0.15.1     2025-07-10 [1] CRAN (R 4.3.3)
       tzdb                 0.5.0      2025-03-15 [1] CRAN (R 4.3.3)
       unifir               0.2.4      2024-02-01 [1] CRAN (R 4.3.3)
       units                0.8-7      2025-03-11 [1] CRAN (R 4.3.3)
     P urlchecker           1.0.1      2021-11-30 [?] CRAN (R 4.3.3)
     P usethis              3.1.0      2024-11-26 [?] CRAN (R 4.3.3)
       uuid                 1.2-1      2024-07-29 [1] CRAN (R 4.3.3)
     P vctrs                0.6.5      2023-12-01 [?] CRAN (R 4.3.3)
       viridisLite          0.4.2      2023-05-02 [1] CRAN (R 4.3.3)
     P withr                3.0.2      2024-10-28 [?] CRAN (R 4.3.3)
       wk                   0.9.4      2024-10-11 [1] CRAN (R 4.3.3)
     P xfun                 0.52       2025-04-02 [?] CRAN (R 4.3.3)
       xgboost            * 1.7.11.1   2025-05-15 [1] CRAN (R 4.3.3)
       XML                  3.99-0.18  2025-01-01 [1] CRAN (R 4.3.3)
     P xml2                 1.3.8      2025-03-14 [?] CRAN (R 4.3.3)
     P xtable               1.8-4      2019-04-21 [?] CRAN (R 4.3.3)
       xts                * 0.14.1     2024-10-15 [1] CRAN (R 4.3.3)
     P yaml                 2.3.10     2024-07-26 [?] CRAN (R 4.3.3)
       yulab.utils          0.2.0      2025-01-29 [1] CRAN (R 4.3.3)
       zeallot              0.2.0      2025-05-27 [1] CRAN (R 4.3.3)
     P zip                  2.3.3      2025-05-13 [?] CRAN (R 4.3.3)
       zoo                * 1.8-14     2025-04-10 [1] CRAN (R 4.3.3)

     [1] /Users/seamus/repos/ART-TREES-Verification-Repository-Demo-2025/renv/profiles/demo-repo/renv/library/R-4.3/aarch64-apple-darwin20
     [2] /Users/seamus/Library/Caches/org.R-project.R/R/renv/sandbox/R-4.3/aarch64-apple-darwin20/ac5c2659

     * ── Packages attached to the search path.
     P ── Loaded and on-disk path mismatch.

    ──────────────────────────────────────────────────────────────────────────────

``` r
#Sys.getenv()
```
