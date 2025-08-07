# ART-TREES Data Repository Demo

Winrock Intl 2025-08-07

[![LinkedIn Badge](https://img.shields.io/badge/Project-Profile-blue)](https://www.linkedin.com/in/seamusrobertmurphy/)
[![Pubs
Badge](https://img.shields.io/badge/Project-Pubs-critical)](https://scholar.google.com/citations?hl=en&user=jDGq9I4AAAAJ)
[![Twitter Badge](https://img.shields.io/badge/Project-Tweets-critical?color=blue)](https://x.com/) [![Program
Badge](https://img.shields.io/badge/Project-Developer-critical)](https://www.ambiente.gob.ec/) [![Annexes
Badge](https://img.shields.io/badge/Project-Annexes-critical?color=blue)](https://nextcloud.ambiente.gob.ec/index.php/s/EoQjtDP8Lp5SqjS)

-   [Installation Guide](#installation-guide)
-   [Repository Layout](#repository-layout)
-   [Repository Practices](#repository-practices)
    -   [1. Data Traceability](#1-data-traceability)
    -   [2. Data Completeness](#2-data-completeness)
    -   [3. Data Curation](#3-data-curation)
    -   [4. Community Protocols](#4-community-protocols)
-   [Practice Exercise: A Mock Audit](#practice-exercise-a-mock-audit)

Welcome to the
[`ART-TREES-Verification-Repository-Demo-2025.git`](https://github.com/seamusrobertmurphy/ART-TREES-Verification-Repository-Demo-2025),
a training resource for preparing and submitting a complete data package for an ART TREES verification audit. You will
learn the gold standard of data practice: using version control to ensure perfect reproducibility of your calculations.
Today, we hope to

1.  **Clone this repository** to your local compute

2.  **Run the R Markdown analysis script** with one click

3.  **Achieve exact replication** of forest cover change calculations from the TMR

4.  **Demonstrate audit readiness** through version-controlled data practices

This exercise will test your ability to use version-controlled data to achieve an exact result, demonstrating a key
skill required for audit readiness. Specifically, we will replicate calculations of change in forest cover for the
crediting period from 2017 to 2021 using the example script and markdown runtime named `TREES-TMR-Replication-Demo.Rmd`.
Your final calculated values must match the figures reported in **Table 16** of the Ecuador TMR (April 09, 2025).

### Requirements Check {#requirements-check}

Before starting, ensure you have:

-   Git installed on your computer
-   R, RStudio, & Git-CLI installed
-   Basic familiarity with R Markdown
-   Internet connection for cloning

### Installation Guide {#installation-guide}

**Instructions:**

#### **Step 1. Clone the Repository**

Open your terminal command-line tool (or GitHub Desktop) and clone this repository to your local computer. This step is
crucial for working with the precise, version-controlled data.

```` bash
```{bash}
git clone https://github.com/YourOrganization/ART-TREES-Verification-Repository-Demo-2025.git
```
````

#### **Step 2. Navigate to the Script**

All the necessary data and the analysis script are located in the `/03_Spatial_Data/` directory, following the layout
provided in your training curriculum.

-   `03_Spatial_Data/TREES-TMR-Replication-Demo.Rmd`

#### **Step 3. Execute the Script**

Open the `/03_Spatial_Data/` in your R environment and run it. The script is designed to automatically perform the
raster-based calculation to determine the change in forest area and will output the final result.

#### **Step 4. Compare Results**

The script's output will display a final calculated value (in hectares). Compare this result to the figure reported in
**Table 16 (page 129)** of the Ecuador TMR. They should match exactly.

If the script's output does not match, this is a critical learning opportunity. It demonstrates how even small
discrepancies in data or code can lead to different results, which is a common audit finding. It highlights the need for
rigorous version control and a robust QA/QC process.

### Repository Layout {#repository-layout}

We offer the following example as a tentative layout. Please explore the folder structure and examine the contents of
each sample document, and provide feedback on improved structure more appropriate to your project design. Repository
Layout

-   01_Program_Documents/

-   02_Carbon_Data/

-   03_Spatial_Data/

    -   `TREES-TMR-Replication-Demo.Rmd`

-   04_Uncertainty/

-   05_Safeguards/

-   06_QAQC_SOPs/

------------------------------------------------------------------------------------------------------------------------

### Repository Practices {#repository-practices}

As you navigate this repository, keep the following key principles in mind. These are the fundamental concepts that
auditors use to evaluate your submission. We also encourage you to use this repository as a checklist or reference for
your own submissions.

#### 1. Data Traceability

Auditors must be able to trust that your data is authentic, accurate, and has not been altered without record. Our demo
repository demonstrates this through:

-   **Version Control:** Files are named with clear, descriptive conventions to track changes. For example, you should
    have a final version of a map, not just a series of ambiguous draft files.
-   **QA/QC Procedures:** We’ve included a folder for `Quality Control` to show where you would document internal
    checks, ensuring that manual data entry and calculations are double-checked to catch errors.
-   **Traceability:** Every key figure in a report, such as `X hectares deforested`, must be traceable back to its raw
    data source and the methodology used to derive it. Our file structure helps link report claims to specific evidence
    files.

#### 2. Data Completeness

Completeness is a core principle of verification, meaning that all information needed to justify your GHG assertion must
be included. Nothing significant can be missing.

-   **Mapping Requirements:** The repository structure is organized to align directly with the ART TREES requirements.
    This provides a clear framework for you to check if you have all the necessary data for every required category,
    such as deforestation areas, emission factors, and safeguards information.
-   **Completeness Checklist:** You can create and use a checklist to confirm that data for all reporting periods,
    geographic areas, and carbon pools are present and documented before submission.
-   **Curation & Change-Logs:** The repository includes a place to document any methodological changes made over time.
    This ensures that the context for your data is complete, so auditors can fully understand your approach.

#### 3. Data Curation

A well-organized data package allows auditors to quickly find what they need, making the verification process more
efficient and painless.

-   **Logical Folder Structure:** We recommend using a clear folder structure like the one in this demo.
-   Our layout, for example, separates `Calculations & Analysis` from `Spatial Data` and `SOPs & Procedures`. This
    logical grouping helps auditors instinctively navigate your submission.
-   **`README` Files:** A top-level `README` file acts as a quick guide to the entire repository. You can also add
    smaller `README` files to individual folders to describe their contents, like explaining which GIS files are
    included and what their purpose is.
-   **Descriptive Filenaming:** File names should be clear and descriptive, avoiding jargon. For example,
    `Deforestation_Map_2020.shp` is better than `map_v7_final.shp`.
-   **Spatial Data Checklist:** A critical part of any REDD+ submission is the spatial data. Auditors will check that
    all related files for a shapefile (e.g., `.shp`, `.shx`, `.dbf`) are included and that the coordinate reference
    system (`.prj` file) is present and correct. Our demo repository includes a section dedicated to this to ensure you
    don’t miss any components.

#### 4. Community Protocols

We offer a shortlist of default community health files that may be adapted to include SOPs and documentation of workbook
updates, always aiming to build trust in the auditor:

-   **CODE_OF_CONDUCT.md:** A CODE_OF_CONDUCT file defines standards for how to engage in a community.
-   **CONTRIBUTING.md:** A CONTRIBUTING file communicates how people should contribute to your project. Discussion
    category forms can also be added to help customize priority templates issued to stakeholder or partners, or
    community members for opening new discussions in your repository..
-   **FUNDING.yml:** A FUNDING file displays a sponsor button in your repository to increase the visibility of funding
    options for your open source project.
-   **GOVERNANCE.md:** A GOVERNANCE file lets people know about how your project is governed. For example, it might
    discuss project roles and how decisions are made.
-   **Pull request & config.yml:** Issue and pull request templates help standardize the information you'd like
    contributors to include when they open issues and pull requests in your repository.
-   **SECURITY.md:** A SECURITY file gives instructions on how to report a security vulnerability in your project and
    description that hyperlinks the file. For more information, see [Adding a security policy to your
    repository](https://docs.github.com/en/code-security/getting-started/adding-a-security-policy-to-your-repository).
-   **SUPPORT.md:** A SUPPORT file lets people know about ways to get help with your project. For more information, see
    [Adding support resources to your
    project](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/adding-support-resources-to-your-project).

------------------------------------------------------------------------------------------------------------------------

### Practice Exercise: A Mock Audit {#practice-exercise-a-mock-audit}

To test your understanding, imagine you are the auditee for this repository. An auditor asks you the following question:

> *“Please show me the raw data source for the emission factor of 75 tC/ha. Where is that documented, and what is the
> evidence that it was used correctly?”*

**Your task:**

1.  Navigate the repository folders to locate the file(s) that would answer this question.
2.  Explain what you would present to the auditor and why it demonstrates completeness and integrity.
3.  Consider the risks: What would the auditor be concerned about here (e.g., Inherent , Control, Detection Risk)? Your
    response should demonstrate an understanding of why the auditor is asking this question.
