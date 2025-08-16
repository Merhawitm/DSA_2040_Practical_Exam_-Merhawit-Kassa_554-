
# DSA 2040 Practical Exam Submission

**Name:** \[Merhawit Tesfay Kassa]

**Student ID:** \[670554]

**Exam:** DSA 2040 US 2025 – Data Warehousing and Data Mining

**Repository:** `DSA_2040_Practical_Exam_[Merhawit][554]

**Date:** August 14, 2025

# Overview

This project explores data mining techniques using two datasets:

Iris Dataset – for classification, clustering, and preprocessing tasks.

Synthetic Retail Dataset – for ETL, frequent itemset mining, and association rules.

The project demonstrates a full data mining pipeline:

ETL (Extract, Transform, Load)

Exploratory Data Analysis (EDA)

Clustering & Classification

Frequent Pattern Mining (Apriori)

Association Rules & Insights

## Table of Contents

1. [Overview](#overview)
2. [Directory Structure](#directory-structure)
3. [Datasets](#datasets)
4. [Task 1: Data Warehousing](#task-1-data-warehousing)

   * [1.1 Schema Design](#11-schema-design)
   * [1.2 ETL Process](#12-etl-process)
   * [1.3 OLAP Queries & Analysis](#13-olap-queries--analysis)
5. [Task 2: Data Mining](#task-2-data-mining)

   * [2.1 Data Preprocessing](#21-data-preprocessing)
   * [2.2 Clustering](#22-clustering)
   * [2.3 Classification & Association Rules](#23-classification--association-rules)
6. [How to Run](#how-to-run)
7. [Self-Assessment](#self-assessment)

---

## Overview

This repository contains the **practical exam submission** for **DSA 2040 – Data Warehousing and Data Mining**.

* **Section 1 (Data Warehousing):** Designed a star schema, implemented ETL to load a retail dataset into SQLite, executed OLAP queries, and visualized results.
* **Section 2 (Data Mining):** Preprocessed the Iris dataset, applied clustering, classification, and association rule mining for pattern discovery.

---

## Directory Structure

DSA_2040_PROJECT/

│── data/                     # Datasets (raw & preprocessed)

│   ├── iris_preprocessed.csv

│   ├── synthetic_retail_data.csv

│   ├── transactions.csv

│   └── top5_rules.csv

│── notebooks/ # Jupyter Notebooks for analysis

│   ├── Iris_Preprocessing_and_Exploration.ipynb

│   ├── classification_iris.ipynb

│   ├── clustering_iris.ipynb

│   ├── mining_iris_basket.ipynb

│   └── etl_retail.ipynb

│── images/                   # Plots, diagrams, and screenshots

│   ├── iris_boxplots.png

│   ├── iris_clusters.png

│   ├── iris_correlation_heatmap.png

│   ├── iris_pairplot.png

│   ├── decision_tree.png

│   ├── confusion_matrix.png

│   ├── elbow_curve.png

│   ├── schema_diagram.png

│   └── screenshots/*.jpg

│── retail_dw.db              # SQLite database for retail ETL

│── schema.sql                # SQL schema for retail data warehouse

│── README.md                 # Project documentation

---

## Datasets

1. **Online Retail dataset (UCI)** – real-world transactional data.
2. **Synthetic Retail dataset** – generated dataset (\~1000 rows).
3. **Synthetic transactional dataset** – market-basket style data (50 transactions).
4. **Iris dataset** – classical ML dataset for classification and clustering.

---

## Task 1: Data Warehousing

### 1.1 Schema Design

A **star schema** was created consisting of:

* **Fact Table:** `SalesFact` (SaleID, CustomerID, ProductID, TimeID, Quantity, TotalSales)
* **Dimensions:** `CustomerDim`, `ProductDim`, `TimeDim`

**Schema Diagram (placeholder):**
![alt te![alt text](image-2.png)xt](image-1.png)

### 1.2 ETL Process

* Extracted data from **synthetic retail dataset**.
* Transformed attributes: handled missing values, calculated `TotalSales`.
* Loaded data into **SQLite warehouse** (`retail_dw.db`).

**Sample ETL Output (placeholder):**

| SaleID | CustomerID | ProductID | TimeID | Quantity | TotalSales |
| ------ | ---------- | --------- | ------ | -------- | ---------- |
| 1      | 101        | 201       | 301    | 5        | 250.0      |
| 2      | 102        | 202       | 302    | 2        | 80.0       |
| 3      | 103        | 203       | 303    | 1        | 45.0       |

---

### 1.3 OLAP Queries & Analysis

Example query:1. Roll-up: Total Sales by Country and Quarter

**Sample Output :**

<img width="434" height="308" alt="image" src="https://github.com/user-attachments/assets/f470f011-ca5a-4686-bf16-7747757f83a3" />

 2️, Drill-down: Monthly Sales for a Specific Country
**Sample Output :**
<img width="439" height="122" alt="image" src="https://github.com/user-attachments/assets/3d3d8673-4bd3-49ee-8d7d-8ad0050bb460" />

3️, Slice: Total Sales by Category (focus on Electronics)
<img width="538" height="320" alt="image" src="https://github.com/user-attachments/assets/755d1603-8c40-416d-b999-260784504e84" />

 Plot: Bar chart of total sales by country
 <img width="1389" height="590" alt="image" src="https://github.com/user-attachments/assets/c586e4f6-c600-41cb-b967-04f19ecb67ac" />

**Visualization (placeholder):**
![alt text](image-3.png)

---

## Task 2: Data Mining

### 2.1 Data Preprocessing

* Normalized Iris dataset using **MinMax scaling**.
* Handled categorical labels by encoding species.
* Conducted exploratory analysis via **pairplot** and **correlation heatmap**.

**Visualizations (placeholders):**

* Pairplot: !![alt text](image-6.png)

* Heatmap: !![alt text](image-5.png)

---

### 2.2 Clustering

* Applied **K-Means clustering** (k=3).
* Elbow method confirmed **optimal k=3**.
* Clear separation observed across petal length & width.

**Cluster Scatter Plot (placeholder):**
![Cluster Scatter](![alt text](image-7.png))

---

### 2.3 Classification & Association Rules

* **Classification:** Compared Decision Tree and Random Forest.

  * Random Forest achieved **100% accuracy** (best).
  * Decision Tree accuracy \~95%.

**Confusion Matrix (placeholder):**
![Confusion Matrix](![alt text](image-8.png))

* **Association Rules (Apriori):**

  * Discovered strong itemset patterns.
  * Example rule: `{Milk} → {Bread}` with lift > 1.2.

**Association Rules Table (placeholder):**

| Antecedents | Consequents | Support | Confidence | Lift |
| ----------- | ----------- | ------- | ---------- | ---- |
| {Milk}      | {Bread}     | 0.4     | 0.8        | 1.2  |
| {Eggs}      | {Milk}      | 0.3     | 0.75       | 1.1  |

---

## How to Run

Run SQL queries in SQLite client (dw_sql/olap_queries.sql).
1. Install dependencies (`pandas, numpy, scikit-learn, matplotlib, seaborn, mlxtend, faker`).
 eg:pip install pandas numpy scikit-learn sqlite3 seaborn matplotlib mlxtend faker
2. Run ETL to populate the warehouse.
3. Open Jupyter notebooks in `notebooks/` for analysis.
4. View outputs in the `outputs/` folder.
5. SQL queries are in `dw_sql/olap_queries.sql`.

---

## Self-Assessment

| Task                  | Completed | Comments                                             |
| --------------------- | --------- | ---------------------------------------------------- |
| Data Warehouse Design | ✅         | Star schema designed with dimensions and fact table. |
| ETL Implementation    | ✅         | Data cleaned, transformed, and loaded successfully.  |
| OLAP Queries          | ✅         | Aggregated results obtained and visualized.          |
| Preprocessing         | ✅         | Iris dataset normalized, EDA completed.              |
| Clustering            | ✅         | K-Means clustering applied, elbow curve verified.    |
| Classification        | ✅         | Random Forest outperformed Decision Tree.            |
| Association Rules     | ✅         | Apriori discovered frequent patterns and rules.      |

---
## Main Results

Clustering (Iris): Achieved clear separation of species using KMeans and visualized via elbow curve.

Classification (Iris): Random Forest achieved 100% accuracy, outperforming Decision Tree.

Frequent Itemset Mining (Retail): Discovered strong association rules (e.g., {milk, bread} → {butter}).

ETL (Retail): Retail dataset successfully transformed into a star-schema SQLite DW.

 ## Insights

Random Forest provides better generalization compared to Decision Tree, explaining the higher accuracy.

Association rules with high lift > 2 suggest strong product co-purchasing behavior in retail.

EDA revealed clear correlations among Iris features (Petal Length & Width strongly separate species)

## conclusion 

This project demonstrates the versatility of data mining techniques across different domains:

Supervised Learning (Iris Classification)

Unsupervised Knowledge Discovery (Market Basket Mining)

Both highlight the importance of data preprocessing, visualization, model selection, and interpretability.
