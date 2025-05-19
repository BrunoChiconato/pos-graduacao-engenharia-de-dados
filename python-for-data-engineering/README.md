# Python for Data Engineering

![Course Load](https://img.shields.io/badge/Course%20Load-24h-blue)
![Unit](https://img.shields.io/badge/Unit-PUC%20Minas%20Virtual-orange)

## Overview

In this self-paced module of the Data Engineering postgraduate program at PUC Minas Virtual, I mastered the use of Python for end-to-end data workflows. Over 24 hours of interactive lectures and lab exercises, I learned to extract, transform, visualize, and load data—building robust Python pipelines to support analytics and operational applications.

By the end of this module, I was able to:

- Use core Python constructs, control flows, and data structures for data tasks.
- Leverage pandas to clean, transform, and aggregate datasets at scale.
- Create static and interactive visualizations with Matplotlib and Plotly.
- Connect to relational databases and file formats (CSV, Parquet, JSON) using SQLAlchemy and built-in libraries.
- Ingest data from REST APIs and handle pagination, authentication, and JSON parsing.
- Implement concurrent data processing using multithreading and basic distributed patterns.
- Package reusable modules for migration scripts and pipeline components.

The module comprised four thematic units:

1. **Python Fundamentals & Data Structures**
   Deep dive into variables, data types, and structures (lists, tuples, sets, dicts, Series, DataFrame).

2. **Data Manipulation with pandas**
   Loading, cleaning, filtering, grouping, merging and reshaping complex datasets using pandas.

3. **Data Visualization**
   Building publication-quality charts with Matplotlib and interactive dashboards with Plotly.

4. **I/O, APIs & Concurrency**
   - Database connections via SQLIte, reading/writing CSV, Parquet, JSON.
   - Data ingestion from RESTful APIs.
   - Multithreading and multiprocessing for parallel data tasks.

## Prerequisites

- Python ≥ 3.7
- pip or conda package manager
- Basic familiarity with SQL and command-line interfaces
- A code editor or IDE of your choice

> *These will be updated as I progress through the module.*

## Getting Started

1. **Clone the repository**  
   ```bash
   git clone https://github.com/BrunoChiconato/pos-graduacao-engenharia-de-dados.git
   cd pos-graduacao-engenharia-de-dados/python-for-data-engineering
    ```

2. **Set up a virtual environment**

   ```bash
   python -m venv .venv
   source .venv/bin/activate    # macOS/Linux
   source .venv\Scripts\activate     # Windows
   ```

3. **Install dependencies**

   ```bash
   pip install -r requirements.txt
   ```

4. **Launch Jupyter Lab**

   ```bash
   jupyter lab
   ```

   Open the notebooks in `notebooks/` (e.g., `Unit_01_Python_Fundamentals.ipynb`) to follow the exercises.

5. **Run example scripts**

   ```bash
   python scripts/data_extraction.py --config config/db_config.yaml
   ```
