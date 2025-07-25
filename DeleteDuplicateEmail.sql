delete p1 from person p1 join person p2 on p1.email= p2.email and p1.id>p2.id;

// DELETE Comand dosn't works on columns it works on rows 
//delete from table_name 
//deleteS WHOLE ROW  from table_name 

//delete from table_name where condition


//ChatGPT said:
The DELETE command is a Data Manipulation Language (DML) command in SQL.

✅ Category:
🔹 DML (Data Manipulation Language)

📚 What DML commands do:
DML commands are used to manipulate data stored in tables. They do not change the structure of the table — only its content.

🔹 Examples of DML commands:
Command	Purpose
SELECT	Retrieve data
INSERT	Add new rows
UPDATE	Modify existing rows
DELETE	Remove existing rows

❗Important:
DELETE can be rolled back (if you use transactions).

It affects rows, not columns or table structure.

If you need to remove the entire table, that would be a DDL command (DROP TABLE), not DELETE.

=======================================================
### ✅ DDL stands for **Data Definition Language**

DDL commands are used to **define or change the structure** of database objects like **tables**, **schemas**, **indexes**, **views**, etc.

---

### 📚 **Common DDL Commands:**

| Command    | Description                                             |
| ---------- | ------------------------------------------------------- |
| `CREATE`   | Creates a new table, view, index, or other object       |
| `ALTER`    | Modifies an existing database object (e.g., add column) |
| `DROP`     | Deletes an entire object (e.g., table, view, index)     |
| `TRUNCATE` | Removes all rows from a table but keeps its structure   |
| `RENAME`   | Renames a table or column (depends on the DBMS)         |

---

### 🧠 **Examples:**

#### 1. Create a table:

```sql
CREATE TABLE person (
    id INT,
    name VARCHAR(100)
);
```

#### 2. Add a column:

```sql
ALTER TABLE person ADD email VARCHAR(100);
```

#### 3. Drop a table:

```sql
DROP TABLE person;
```

#### 4. Remove all rows (faster than DELETE):

```sql
TRUNCATE TABLE person;
```

---

### ⚠️ Key Difference from DML:

* **DDL commands** change the **structure**, not just data.
* **DDL changes are auto-committed** (can’t be rolled back in some DBs).

---

Let me know if you want a DDL vs DML vs DCL vs TCL comparison — many interviewers ask that!
gikgit