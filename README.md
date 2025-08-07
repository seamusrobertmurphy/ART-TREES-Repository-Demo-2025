
# ART TREES Verification Repository Demonstration
### Demo Repository for Audit-Ready Training 
Winrock Intl
2025-08-07

- [Data Repository Guide](#data-repository-guide)
- [Data Repository Best Practices](#data-repository-best-practices)
  - [1. Data Integrity & Traceability](#1-data-integrity--traceability)
  - [2. Data Completeness Checklists](#2-data-completeness-checklists)
  - [3. Data Packaging & Organization](#3-data-packaging--organization)
- [Practice Exercise: A Mock Audit](#practice-exercise-a-mock-audit)

Welcome to the **ART-TREES-Verification-Repository-Demo-2025**, a
training resource for preparing and submitting a complete data package
for an ART TREES verification audit.

This repository demonstrates several best practices for gold-standard
data submission to the ART TREES carbon registry. By exploring its
contents, you will learn how to organize your documents and data to meet
the rigorous standards of GHG verification. The goal is to help you
“think like an auditor”, or a “replicator” attempting to verify the
enclosed calcualtions, prioritizing transparent and complete design that
is easy to verify and ultimately reduces likelihood of audit findings
and delays in replciation.

### Data Repository Guide

This repository is designed as a practical learning tool. We recommend
you explore the folder structure and examine the contents of each sample
document. This will help you understand:

1.  **Document-Level Completeness:** The top-level folders represent the
    “whole package” of documents required by ART. Your submission must
    include all specified documents, such as the
    `TREES Monitoring Report` and the `ERR Calculation Workbook`. A
    missing document is an administrative failure.
2.  **Section-Level Completeness:** Within each main document folder,
    you’ll find files corresponding to the components required by the
    ART TREES Standard (Annex A). This demonstrates how to ensure each
    section of your report contains all necessary parts.
3.  **Requirement-Level Completeness:** The files within this repository
    contain dummy content and notes that illustrate how to meet specific
    technical requirements, such as providing verifiable evidence for
    excluding emissions from a secondary carbon pool.

We encourage you to use this repository as a checklist and a reference
for your own program’s submissions.

------------------------------------------------------------------------

### Data Repository Best Practices

As you navigate this repository, keep the following key principles in
mind. These are the fundamental concepts that auditors use to evaluate
your submission.

#### 1. Data Integrity & Traceability

Auditors must be able to trust that your data is authentic, accurate,
and has not been altered without record. Our demo repository
demonstrates this through:

- **Version Control:** Files are named with clear, descriptive
  conventions to track changes. For example, you should have a final
  version of a map, not just a series of ambiguous draft files.
- **QA/QC Procedures:** We’ve included a folder for `Quality Control` to
  show where you would document internal checks, ensuring that manual
  data entry and calculations are double-checked to catch errors.
- **Traceability:** Every key figure in a report, such as
  `X hectares deforested`, must be traceable back to its raw data source
  and the methodology used to derive it. Our file structure helps link
  report claims to specific evidence files.

#### 2. Data Completeness Checklists

Completeness is a core principle of verification, meaning that all
information needed to justify your GHG assertion must be included.
Nothing significant can be missing.

- **Mapping Requirements to Data:** The repository structure is
  organized to align directly with the ART TREES requirementsThis
  provides. a clear framework for you to check if you have all the
  necessary data for every required category, such as deforestation
  areas, emission factors, and safeguards information.
- **Completeness Checklist:** You can create and use a checklist to
  confirm that data for all reporting periods, geographic areas, and
  carbon pools are present and documented before submission.
- **Methodology & Changes:** The repository includes a place to document
  any methodological changes made over time. This ensures that the
  context for your data is complete, so auditors can fully understand
  your approach.

#### 3. Data Packaging & Organization

A well-organized data package allows auditors to quickly find what they
need, making the verification process more efficient and painless.

- **Logical Folder Structure:** We recommend using a clear folder
  structure like the one in this demo. \[cite_start\]Our layout, for
  example, separates `Calculations & Analysis` from `Spatial Data` and
  `SOPs & Procedures`. This logical grouping helps auditors
  instinctively navigate your submission.
- **`README` Files:** A top-level `README` file acts as a quick guide to
  the entire repository. You can also add smaller `README` files to
  individual folders to describe their contents, like explaining which
  GIS files are included and what their purpose is.
- **Descriptive Filenaming:** File names should be clear and
  descriptive, avoiding jargon. For example,
  `Deforestation_Map_2020.shp` is better than `map_v7_final.shp`.
- **Spatial Data Checklist:** A critical part of any REDD+ submission is
  the spatial data. Auditors will check that all related files for a
  shapefile (e.g., `.shp`, `.shx`, `.dbf`) are included and that the
  coordinate reference system (`.prj` file) is present and correct. Our
  demo repository includes a section dedicated to this to ensure you
  don’t miss any components.

------------------------------------------------------------------------

### Practice Exercise: A Mock Audit

To test your understanding, imagine you are the auditee for this
repository. An auditor asks you the following question:

> *“Please show me the raw data source for the emission factor of 75
> tC/ha. Where is that documented, and what is the evidence that it was
> used correctly?”*

**Your task:**

1.  Navigate the repository folders to locate the file(s) that would
    answer this question.
2.  Explain what you would present to the auditor and why it
    demonstrates completeness and integrity.
3.  Consider the risks: What would the auditor be concerned about here
    (e.g., Inherent , Control, Detection Risk)? Your response should
    demonstrate an understanding of why the auditor is asking this
    question.

This exercise, similar to a mock audit, is a powerful way to identify
potential gaps in your evidence and prepare for the real thing. By
practicing this, you can feel confident and ready when a VVB auditor
performs a similar check.

Winrock Intl 2025-08-07

Welcome to the **ART-TREES-Verification-Repository-Demo-2025**, a training resource for preparing and submitting a
complete data package for an ART TREES verification audit.

This repository demonstrates several best practices for gold-standard data submission to the ART TREES carbon registry.
By exploring its contents, you will learn how to organize your documents and data to meet the rigorous standards of GHG
verification. The goal is to help you "think like an auditor", or a "replicator" attempting to verify the enclosed
calcualtions, prioritizing transparent and complete design that is easy to verify and ultimately reduces likelihood of
audit findings and delays in replciation.

-   [Data Repository Guide](#data-repository-guide)
-   [Data Repository Best Practices](#data-repository-best-pracrtices)
 -   [Data Integrity & Traceability](#data-integrity-&-traceability)
-   [Data Repository Guide](#data-repository-guide)
-   [Data Repository Guide](#data-repository-guide)
-   [Data Repository Guide](#data-repository-guide)
-   [Data Repository Guide](#data-repository-guide)
-   [Including Plots](#including-plots)

### Data Repository Guide

This repository is designed as a practical learning tool. We recommend you explore the folder structure and examine the
contents of each sample document. This will help you understand:

1.  **Document-Level Completeness:** The top-level folders represent the "whole package" of documents required by ART.
    Your submission must include all specified documents, such as the `TREES Monitoring Report` and the
    `ERR Calculation Workbook`. A missing document is an administrative failure.
2.  **Section-Level Completeness:** Within each main document folder, you'll find files corresponding to the components
    required by the ART TREES Standard (Annex A). This demonstrates how to ensure each section of your report contains
    all necessary parts.
3.  **Requirement-Level Completeness:** The files within this repository contain dummy content and notes that illustrate
    how to meet specific technical requirements, such as providing verifiable evidence for excluding emissions from a
    secondary carbon pool.

We encourage you to use this repository as a checklist and a reference for your own program's submissions.

------------------------------------------------------------------------------------------------------------------------

### Data Repository Best Practices

As you navigate this repository, keep the following key principles in mind. These are the fundamental concepts that
auditors use to evaluate your submission.

#### 1. Data Integrity & Traceability

[cite_start]Auditors must be able to trust that your data is authentic, accurate, and has not been altered without
record[cite: 594, 595]. Our demo repository demonstrates this through:

-   **Version Control:** Files are named with clear, descriptive conventions to track changes. For example, you should
    have a final version of a map, not just a series of ambiguous draft files.
-   [cite_start]**QA/QC Procedures:** We've included a folder for `Quality Control` [cite: 662] [cite_start]to show
    where you would document internal checks, ensuring that manual data entry and calculations are double-checked to
    catch errors[cite: 603, 604].
-   [cite_start]**Traceability:** Every key figure in a report, such as `X hectares deforested`, must be traceable back
    to its raw data source and the methodology used to derive it[cite: 613]. Our file structure helps link report claims
    to specific evidence files.

#### 2. Data Completeness

[cite_start]Completeness is a core principle of verification, meaning that all information needed to justify your GHG
assertion must be included[cite: 623]. Nothing significant can be missing.

-   **Mapping Requirements to Data:** The repository structure is organized to align directly with the ART TREES
    requirements. [cite_start]This provides a clear framework for you to check if you have all the necessary data for
    every required category, such as deforestation areas, emission factors, and safeguards information[cite: 626, 627].
-   [cite_start]**Completeness Checklist:** You can create and use a checklist to confirm that data for all reporting
    periods, geographic areas, and carbon pools are present and documented before submission[cite: 629, 631, 632].
-   **Methodology & Changes:** The repository includes a place to document any methodological changes made over time.
    [cite_start]This ensures that the context for your data is complete, so auditors can fully understand your
    approach[cite: 647, 648].

#### 3. Data Packaging & Organization

[cite_start]A well-organized data package allows auditors to quickly find what they need, making the verification
process more efficient and painless[cite: 654, 655].

-   **Logical Folder Structure:** We recommend using a clear folder structure like the one in this demo. [cite_start]Our
    layout, for example, separates `Calculations & Analysis` from `Spatial Data` and `SOPs & Procedures`[cite: 661,
    662]. This logical grouping helps auditors instinctively navigate your submission.
-   [cite_start]**`README` Files:** A top-level `README` file acts as a quick guide to the entire repository[cite: 665].
    [cite_start]You can also add smaller `README` files to individual folders to describe their contents, like
    explaining which GIS files are included and what their purpose is[cite: 667].
-   [cite_start]**Descriptive Filenaming:** File names should be clear and descriptive, avoiding jargon[cite: 669].
    [cite_start]For example, `Deforestation_Map_2020.shp` is better than `map_v7_final.shp`[cite: 670].
-   **Spatial Data Checklist:** A critical part of any REDD+ submission is the spatial data. [cite_start]Auditors will
    check that all related files for a shapefile (e.g., `.shp`, `.shx`, `.dbf`) are included and that the coordinate
    reference system (`.prj` file) is present and correct[cite: 714, 717, 720]. Our demo repository includes a section
    dedicated to this to ensure you don't miss any components.

------------------------------------------------------------------------------------------------------------------------

### Practice Exercise: A Mock Audit

To test your understanding, imagine you are the auditee for this repository. An auditor asks you the following question:

> *"Please show me the raw data source for the emission factor of 75 tC/ha. Where is that documented, and what is the
> evidence that it was used correctly?"*

**Your task:** 1. Navigate the repository folders to locate the file(s) that would answer this question. 2. Explain what
you would present to the auditor and why it demonstrates completeness and integrity. 3. Consider the risks: What would
the auditor be concerned about here (e.g., Inherent Risk, Control Risk, Detection Risk)? [cite_start]Your response
should demonstrate an understanding of why the auditor is asking this question[cite: 222, 230, 236].

[cite_start]This exercise, similar to a mock audit, is a powerful way to identify potential gaps in your evidence and
prepare for the real thing[cite: 787]. By practicing this, you can feel confident and ready when a VVB auditor performs
a similar check.
