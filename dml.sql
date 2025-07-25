Great! Here's a clear and concise comparison of the main SQL command categories: **DDL vs DML vs DCL vs TCL**

---

### 🔄 **1. DDL – Data Definition Language**

Used to **define or modify the structure** of database objects like tables, views, schemas.

| Feature          | Description                                     |
| ---------------- | ----------------------------------------------- |
| Commands         | `CREATE`, `ALTER`, `DROP`, `TRUNCATE`, `RENAME` |
| Affects          | Structure (not data)                            |
| Auto-commit      | ✅ Yes (changes are permanent)                   |
| Rollback allowed | ❌ Usually not                                   |

**Example:**

```sql
CREATE TABLE users (id INT, name VARCHAR(100));
```

---

### 🧱 **2. DML – Data Manipulation Language**

Used to **manipulate data** inside the tables (not structure).

| Feature          | Description                            |
| ---------------- | -------------------------------------- |
| Commands         | `SELECT`, `INSERT`, `UPDATE`, `DELETE` |
| Affects          | Table data (rows)                      |
| Auto-commit      | ❌ No (can be rolled back)              |
| Rollback allowed | ✅ Yes                                  |

**Example:**

```sql
DELETE FROM users WHERE id = 5;
```

---

### 🔐 **3. DCL – Data Control Language**

Used to **control access** to the database (permissions, privileges).

| Feature     | Description              |
| ----------- | ------------------------ |
| Commands    | `GRANT`, `REVOKE`        |
| Affects     | User access and security |
| Auto-commit | ✅ Yes                    |

**Example:**

```sql
GRANT SELECT ON users TO 'john';
```

---

### 🔁 **4. TCL – Transaction Control Language**

Used to **manage transactions** (groups of SQL operations).

| Feature     | Description                                          |
| ----------- | ---------------------------------------------------- |
| Commands    | `COMMIT`, `ROLLBACK`, `SAVEPOINT`, `SET TRANSACTION` |
| Affects     | Transaction behavior                                 |
| Auto-commit | ❌ Controlled manually                                |

**Example:**

```sql
BEGIN;
UPDATE users SET name = 'Alice' WHERE id = 1;
ROLLBACK;
```

---

### 🧠 Summary Table:

| Feature     | DDL            | DML           | DCL         | TCL          |
| ----------- | -------------- | ------------- | ----------- | ------------ |
| Purpose     | Structure      | Data          | Permissions | Transactions |
| Example     | `CREATE TABLE` | `INSERT INTO` | `GRANT`     | `COMMIT`     |
| Rollback    | ❌ Usually not  | ✅ Yes         | ❌ No        | ✅ Yes        |
| Auto-commit | ✅ Yes          | ❌ No (manual) | ✅ Yes       | ❌ No         |

---

Let me know if you'd like a PDF/cheat sheet version or examples for interview answers!
