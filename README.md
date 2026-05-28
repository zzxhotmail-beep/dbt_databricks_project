# 🚀 Modern Data Pipeline with DBT & Databricks

## 📌 Overview

This project demonstrates an end-to-end analytics engineering workflow using **DBT(Data Build Tool)**, Git, and Databricks.

The pipeline follows the Medallion Architecture (Bronze, Silver, Gold) and transforms raw data into analytics-ready models using modern data engineering best practices.

The project includes data modeling, testing, snapshots for Slowly Changing Dimensions (SCD Type-2), reusable macros, seeds, and CI/CD deployment concepts.

## 🏗️ Architecture

```text
Raw Data → Bronze Layer → Silver Layer → Gold Layer
                         ↓
                    DBT Models
                         ↓
               Analytics-Ready Tables
```

## ✨ Key Features

- ✅ DBT Core Integration
- ✅ Databricks Warehouse Connection
- ✅ Modular DBT Models
- ✅ Source Configuration
- ✅ Data Quality Tests
- ✅ Seeds for Static Data
- ✅ Jinja & Reusable Macros
- ✅ Snapshot Implementation (SCD Type-2)
- ✅ CI/CD Deployment Workflow
- ✅ Analytics Engineering Best Practices

## 🛠️ Tech Stack

| Technology | Purpose |
|---|---|
| DBT | Data Transformation |
| Databricks | Data Platform |
| SQL | Core Data Modeling Logic |
| Python | Supporting Workflows |
| Git & GitHub | Version Control |
| Jinja | Dynamic SQL Templates |

## 📂 Project Structure

```text
dbt-databricks-project/
│
├── models/
├── snapshots/
├── seeds/
├── macros/
├── tests/
├── analyses/
├── dbt_project.yml
├── packages.yml
└── README.md
```

## 📚 DBT Concepts Covered

### 🔹 Sources
Configured raw data sources for lineage tracking and transformation dependency management.

### 🔹 Models
Built modular SQL transformation layers following analytics engineering best practices.

### 🔹 Tests
Implemented comprehensive schema and data quality tests including:

**Generic tests**: unique, not null, accepted values, relationships

**Singular tests**: Custom SQL validation for business logic and data accuracy

**Custom generic tests**: Reusable test macros for scalable data quality governance

### 🔹 Seeds
Loaded static CSV reference datasets into Databricks using DBT Seeds.

### 🔹 Snapshots
Implemented Slowly Changing Dimension (SCD Type-2) tracking using DBT Snapshots.

### 🔹 Macros & Jinja
Created reusable SQL logic using Jinja templating and DBT macros.

### 🔹 Deployment
Explored CI/CD deployment workflows for production-ready DBT projects.

## 🎯 Learning Outcomes

Through this project, I gained hands-on experience with:

- Modern Data Stack workflows
- Data Engineering concepts
- Data transformation pipelines
- Dimensional modeling
- Data quality validation
- Version control with Git/GitHub
- DBT project organization and deployment practices

## 👤 Author - Zixuan Zhang

This project highlights my hands-on expertise in Git, Databricks and fundamental DBT skills, all of which are critical for a Data Engineer role.
- **LinkedIn**: [My Professional Profile](https://www.linkedin.com/in/zixuan-zhang-78ba38274)
