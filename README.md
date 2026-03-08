# SQL Task 7 - Database Constraints & Cascading Deletes

This project demonstrates the implementation of relational database concepts using SQL, specifically focusing on **Foreign Key Constraints** and the **ON DELETE CASCADE** behavior.

## Project Overview

The goal of this task is to create a simple two-table relational structure representing departments and employees. It illustrates how data integrity is maintained across related tables and how automated cleanup works when parent records are deleted.

## Database Schema

The database consists of two main tables:

1.  **`departments`**: Stores organizational department information.
    - `department_id` (INT, Primary Key)
    - `department_name` (VARCHAR)

2.  **`employees`**: Stores individual employee records linked to departments.
    - `employee_id` (INT, Primary Key)
    - `employee_name` (VARCHAR)
    - `department_id` (INT, Foreign Key referencing `departments.department_id`)

## Key Features

### 1. Foreign Key Constraints

The schema enforces referential integrity. An employee cannot be assigned to a `department_id` that does not exist in the `departments` table. Any attempt to insert an invalid record will result in a foreign key constraint error.

### 2. ON DELETE CASCADE

This feature automatically handles the deletion of related records. When a department is removed from the `departments` table, all employees associated with that department are automatically deleted from the `employees` table. This ensures no orphaned records are left behind.

## How to Run

To execute the SQL script and observe these behaviors:

1.  Ensure you have a SQL database system installed (e.g., MySQL or PostgreSQL).
2.  Open your SQL client or terminal.
3.  Run the following command to execute the script:
    ```sql
    SOURCE task7.sql;
    ```
    _(Note: The command may vary depending on your SQL environment.)_

## Sample Queries

The `task7.sql` script includes several queries to verify the database state:

- **Insert Valid Records**: Initial data setup for departments and employees.
- **Fail Invalid Insert**: Demonstrates the error when using a non-existent department ID.
- **Cascading Delete**: Shows the automatic removal of employees when a department is deleted.
- **Verify Final State**: Displays the remaining records to confirm cascading behavior.
