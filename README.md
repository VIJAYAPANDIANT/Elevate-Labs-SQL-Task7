# 📊 Elevate Lab SQL Task 7: Database Constraints & Cascading Deletes

A professional SQL project demonstrating the implementation of relational database concepts, specifically focusing on Foreign Key Constraints and the ON DELETE CASCADE behavior.

## 📌 Project Objective

The primary goal of this task is to create a simple two-table relational structure representing departments and employees. It illustrates how data integrity is maintained across related tables and how automated cleanup works when parent records are deleted.

## 🛠️ Technical Scope

- **Database Management System:** SQL (MySQL / PostgreSQL / SQL Server compatible)
- **Core Concepts:** Relational Database Design, Data Integrity
- **Advanced Techniques:** Foreign Key Constraints (`FOREIGN KEY`, `REFERENCES`), Cascading Actions (`ON DELETE CASCADE`)

## 🗄️ Database Schema

### `departments` Table

| Column            | Data Type     | Constraint / Description         |
| :---------------- | :------------ | :------------------------------- |
| `department_id`   | `INT`         | Primary Key                      |
| `department_name` | `VARCHAR(50)` | Name of the Department, Not Null |

### `employees` Table

| Column          | Data Type     | Constraint / Description                                  |
| :-------------- | :------------ | :-------------------------------------------------------- |
| `employee_id`   | `INT`         | Primary Key                                               |
| `employee_name` | `VARCHAR(50)` | Full Name of Employee, Not Null                           |
| `department_id` | `INT`         | Foreign Key referencing `departments.department_id`       |

## 💻 SQL Implementations

Key operations demonstrated in the script:

1. **Schema Creation & Relations:**
   - Creation of the `task7` database.
   - Creating `departments` and `employees` tables with a primary key / foreign key relationship.
   - Enforcing `ON DELETE CASCADE` to automatically remove child records.
2. **Data Insertion (Valid & Invalid):**
   - Inserting valid department and employee records.
   - Attempting an invalid insert (assigning an employee to a non-existent department) to demonstrate foreign key constraint errors.
3. **Cascading Deletion:**
   - Deleting a department record.
   - Verifying the automatic deletion of all employees associated with the deleted department without requiring manual intervention.

## 🚀 Setup & Execution

1. **Initialize:** Execute the script to create the `task7` database and both tables.
2. **Populate Data:** Run the `INSERT` statements to load initial departments and employees.
3. **Test Constraints:** Execute the invalid `INSERT` statement to observe the foreign key constraint failure.
4. **Demonstrate Cascade:** Run the `DELETE` statement on a department and use `SELECT` to verify that associated employees have been automatically removed.

> [!IMPORTANT]
> The `ON DELETE CASCADE` option is powerful for maintaining clean data, but must be used carefully to prevent unintended mass data deletion when parent records are removed.

---

*Developed for Elevate Lab Internship Program - SQL Practice and Interview Preparation.*
