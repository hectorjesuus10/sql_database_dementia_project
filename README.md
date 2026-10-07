# 🧠 SQL Database: Dementia Patient Management

[![Database: SQL](https://img.shields.io/badge/Database-SQL-blue.svg)](https://en.wikipedia.org/wiki/SQL)
[![Phase: Complete](https://img.shields.io/badge/Phase-Complete-success.svg)](#)

## 🏥 Project Scope
This project aims to present a fully functional relational database tailored specifically for hospitals. The core objective is to address the growing societal challenge of dementia by providing healthcare facilities with a robust, structured system to manage patient data, track progression, and streamline care. 

The structural design, hospital presentation instructions, and schema documentation can be found in the **`ERD relation and schema folder`**.

## 📅 Project Timeline & Methodology
This database was developed over a structured 5-week period, evolving from a conceptual societal problem into a fully integrated, real-world data solution.

### Week 1: Societal Problem Definition
* **Focus:** Identifying the real-world challenge.
* **Details:** We analyzed the impact of dementia on patients, families, and healthcare infrastructure. This defined our project scope and outlined exactly what data a hospital needs to track to improve dementia care.

### Week 2: Data Modelling 
* **Focus:** Conceptualizing the database architecture.
* **Details:** We mapped out the entities and relationships, creating our very first **Entity-Relationship Diagram (ERD)**. During this phase, we also performed our first rounds of **database normalization** to eliminate redundancies and ensure data integrity.

### Week 3: Code Implementation
* **Focus:** Bringing the model to life.
* **Details:** We translated our ERD into functional SQL code, creating the exact tables, primary/foreign key relationships, and data types required to house the hospital's data safely.

### Week 4: Product Presentation
* **Focus:** Stakeholder buy-in.
* **Details:** We recorded a video presentation directed at our target customers (hospital administration and medical staff), demonstrating the value, security, and capabilities of our database product.

### Week 5: Real Data Integration
* **Focus:** Practical application and testing.
* **Details:** We populated the database with real dataset inputs. This allowed us to test real-world queries, validate our schema's robustness, and ensure the system behaves efficiently under standard hospital data loads.

## 📂 Repository Structure

* **`ERD relation and schema folder/`** - Contains the initial Entity-Relationship Diagrams, normalization rules, schema layouts, and the specific guidelines for presenting this database to the hospital.
* **`sql_scripts/`** - SQL scripts for table creation, schema setup, and relationships (Week 3).
* **`data/`** - The integrated real datasets used during Week 5 testing.

## 🚀 Getting Started

1. **Clone the repository:**
   ```bash
   git clone [https://github.com/hectorjesuus10/sql_database_dementia_project.git](https://github.com/hectorjesuus10/sql_database_dementia_project.git)
   ```

2. **Review the Schema:** 
   Open the `ERD relation and schema folder` to review the architectural choices and normalization process.

3. **Run the SQL files:** 
   Execute the SQL creation scripts in your preferred SQL Server/IDE (e.g., MySQL Workbench, PostgreSQL, SQL Server Management Studio) to build the hospital database.

4. **Load the Data:** 
   Run the insertion scripts to populate the database with the real data gathered in Week 5.
