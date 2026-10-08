# SQL Database: Dementia Overview

[![Database: SQL](https://img.shields.io/badge/Database-SQL-blue.svg)](https://en.wikipedia.org/wiki/SQL)
[![Phase: Complete](https://img.shields.io/badge/Phase-Complete-success.svg)](#)

## Project Scope
This project aims to present a relational database built around the various aspects of dementia, such as the patient data, hospital records, treatment availability, drug production and costs, insurance coverage, etc. The core objective is to address the growing societal challenge of dementia by providing healthcare facilities with a robust and central system from where they can manage patient data, track progression, and streamline care. 

The structural design, stakeholder pitch presentation, and schema documentation can be found in the **`ERD relation and schema folder`**.

## Project Timeline & Methodology
This database was developed over a structured 5-week period, and it began from a brainstormed societal problem and developed into an integrated and structured solution to the problem. 

### Week 1: Societal Problem Definition
* **Focus:** Identifying the real-world challenge.
* **Details:** We analyzed the impact of dementia on patients, families, and healthcare infrastructure. This defined our project scope and outlined what kind of data a hospital would need to track to improve dementia care and other factors.

### Week 2: Data Modelling 
* **Focus:** Conceptualizing the database architecture.
* **Details:** We mapped out the entities and relationships, creating our very first **Entity-Relationship Diagram (ERD)**. This phase was also when we performed our first rounds of **database normalization** to maintain structure and integrity. 

### Week 3: Code Implementation
* **Focus:** Bringing the model to life.
* **Details:** We began to translate our ERD into functional SQL code, creating the tables, primary/foreign key relationships, and data types best suited for each relation. 

### Week 4: Product Presentation
* **Focus:** Stakeholder buy-in.
* **Details:** We recorded a video presentation directed at our target customers (hospital/healthcare leaders, policy-makers, government representatives, etc.), demonstrating the breadth and capabilities of our database product.

### Week 5: Real Data Integration
* **Focus:** Practical application and testing.
* **Details:** We populated the database with real dataset inputs. This allowed us to test real-world queries, validate our schema's robustness, and ensure the system behaves efficiently under standard hospital data loads. It also provided key feedback whenever the real data exposed bugs and structural errors. 

## Repository Structure

The repository is divided into the following sections:

1) DATA IMPLEMENTATION: 
Contains the work related to preparing and implementing the dataset used in the database.

2) ERD, Relational Schema and Normalization: 
Contains the database design documentation, including the Entity-Relationship Diagram, relational schema, and normalization work.

3) SQL Code: 
Contains the SQL used to create and work with the database, including the table structures, relationships, data, and queries.

4) VIDEO:
Contains the video presentation for the project.

5) README.md:
This file provides an overview of the project and explains how the repository is organised.

## SQL queries

The SQL code includes queries designed to answer practical questions that could be relevant in a hospital environment.

For example, the database can be used to analyse patient treatment outcomes, look at information related to GPs and medical practices, and retrieve information about patients and their care.

## Getting Started

To work with the project:

1) Clone the repository: git clone https://github.com/hectorjesuus10/sql_database_dementia_project.git
   
2) Open the repository and review the ERD, Relational Schema and Normalization folder to understand the database design.
   
3) Open the SQL Code folder and run the SQL scripts in the appropriate order (Schema.sql --> Realdata.sql --> Mockdata.sql) to create the database and its tables. 

4) Run the data implementation scripts to populate the database.

5) Once the database has been populated, the SQL queries can be executed to explore the data and reproduce the results from the project.

6) The exact setup may depend on the SQL environment being used. 
