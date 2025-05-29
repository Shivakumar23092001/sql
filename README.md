# 📊 Hands-On SQL Project with Real-World Scenarios

## 🎯 Objective

The purpose of this SQL project is to explore and practice a wide range of SQL concepts using sample data across different domains like books, employees, and movies. This script helps beginners and intermediate learners understand how to work with databases using SQL effectively.

---

## 🛠️ Tools Used

- **RDBMS**: MySQL (Recommended: v5.7+)
- **Client Tools**: 
  - MySQL Workbench
  - phpMyAdmin
  - CLI or Terminal
- **Optional**: VS Code or any text editor for editing `.sql` files

---

## 🗄️ Databases Used

- `db` – Book and employee-related operations  
- `trail` – Movies and box office details  
- `tummy` – Director and movie relationships  
- `TeluguMovies` – Regional movie and director data

---

## 📁 Tables Involved

Examples of major tables:
- Books: `Books`, `weds`
- Employees: `Employee`, `Employees`, `Departments`
- Movies: `movies`, `box_offices`, `Directors`

---

## 🪜 Steps Included in the Script

1. **Create and Use Databases**
   - `CREATE DATABASE`, `USE`

2. **Create Tables with Constraints**
   - `PRIMARY KEY`, `UNIQUE`, `NOT NULL`, `AUTO_INCREMENT`

3. **Insert Sample Data**
   - Multiple `INSERT` statements with various formats

4. **Basic and Advanced SELECT Queries**
   - Filters using `WHERE`, `LIKE`, `IN`, `ORDER BY`, `LIMIT`

5. **Aggregation and Grouping**
   - `SUM`, `AVG`, `MIN`, `MAX`, `GROUP BY`, `HAVING`

6. **Joins**
   - `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `CROSS JOIN`

7. **Subqueries**
   - Scalar and nested subqueries
   - Nth highest salary using `OFFSET`

8. **Set Operations**
   - `UNION`, `UNION ALL`

9. **DDL Modifications**
   - `ALTER`, `RENAME`, `DROP`, `TRUNCATE`

10. **Working with Dates and Functions**
    - `CURRENT_DATE`, `CONCAT()`

---

## 📊 Analysis Performed

- Join analysis between books and their prices (`Books` and `weds`)
- Gross earnings for movies by joining `movies` and `box_offices`
- Departmental salary comparison using subqueries
- Filtering based on string patterns and salary ranges
- Nth highest salary using `LIMIT OFFSET`

---

## 🔍 Key Insights

- **Data Relationships**: Clear understanding of foreign keys and joining tables
- **Realistic Data Design**: Simulated use cases like movie ticket earnings and book sales
- **Efficient Querying**: Use of filters, aggregate functions, and grouping helps in deriving actionable insights
- **Query Variants**: Demonstrated use of set operations, subqueries, and conditional filtering

---

## ✅ Conclusion

This SQL project provides a hands-on learning experience with:

- Full CRUD operations
- Table relationships and normalization
- Analytical thinking using SQL queries
- Real-world case simulations

By working through this script, you’ll strengthen your foundation in SQL and be better prepared for academic, project, or job interview settings.

---

## 👤 Author

**Shiva Kumar**  
Final Year B.Tech CSE Student  
📍 Hyderabad, India  
💡 Interests: Databases, Backend Systems, Data Analytics

---

## 🚀 How to Run

1. Install MySQL and any GUI tool (like MySQL Workbench).
2. Open the `.sql` file.
3. Execute statements step-by-step or run the full script.
4. Explore and modify queries to deepen understanding.
