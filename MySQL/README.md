# Fitness App Database System (MySQL)

**Course:** Database Management – Conestoga College  
**Contributor:** **DML & Stored Procedure Developer**  
**Date:** December 2024  

---

## Overview
A complete **MySQL database system** for a **Fitness App** that enables users to track workouts, monitor progress, and manage subscriptions efficiently.  

This project showcases skills in:
- Database normalization (1NF → 3NF)  
- Data Definition Language (DDL)  
- Data Manipulation Language (DML)  
- Stored Procedures for business logic  
- Database backup and maintenance  

---

## My Role
**Focus:** *Data Population (DML)* and *User Re-engagement Procedure*  

I was responsible for:
1. Writing comprehensive DML scripts to populate all tables with realistic sample data.  
2. Designing and implementing a stored procedure to identify inactive users who still have active subscriptions.  
3. Performing a full database backup using `mysqldump`.  

---

## Key Components

### DML Scripts — [`Ya-Jwu_DML.sql`](Ya-Jwu_DML.sql)
Populated all eight tables with complete, realistic datasets:
- 20 Users  
- 30 Exercises  
- 50 User Progress Records  
- 25 Transactions  
- 10 Workout Plans (linked to 30 exercises)  
- 4 Discount Types  
- 3 Subscription Plans  

**Demonstrates:**  
Data integrity, foreign key relationships, and normalized design consistency.  

---

### Stored Procedure — [`Ya-Jwu_Jang_ProcedureGoal.sql`](Ya-Jwu_Jang_ProcedureGoal.sql)

**Goal:** Identify users who have not been active since a given date but still have an active subscription.  
This logic supports re-engagement email campaigns to bring users back to the app.

```sql
CREATE PROCEDURE listlazyusers(IN input_date DATE)
BEGIN
   SELECT 
       user.UserID,
       user.Fname, 
       user.Lname, 
       user.Email,
       MAX(progress.Date) AS LastTime_Workout, 
       MAX(Transaction.Startdate) AS Subscription_startdate, 
       discount.duration,
       DATE_ADD(MAX(Transaction.Startdate), INTERVAL discount.duration DAY) AS subscription_enddate
   FROM user
   JOIN progress ON progress.userID = user.userID
   JOIN Transaction ON Transaction.User_UserID = user.UserID
   JOIN discount ON discount.DiscountID = Transaction.Discount_DiscountID
   GROUP BY UserID
   HAVING LastTime_Workout < input_date AND subscription_enddate > CURRENT_DATE()
   ORDER BY UserID;
END;
```

---

## 📚 Full Report
The complete project documentation and contributions from all team members are available in the report below:

📄 [Group1_GroupReport.pdf](Group1_GroupReport.pdf)

**Highlights from the report:**
- **Section 3 – DML & Backup:** Authored by *Ya-Jwu Jang*, responsible for database population, data backup, and procedure design.  
- **Section 5 – Goals:** Includes *JANG’s goal procedure* to identify inactive but subscribed users.  
- **Team Members:**  
  - Amandus Fernando — Data Mart & Analytics  
  - Ya-Jwu Jang — DML & Procedure Goal  
  - Gavril Koryakin — DDL & Normalization  
  - Sophie Obiyan — ER Diagram & Subscription Procedures  
- **Instructor:** Yasser Elmankabady  
- **Course:** PROG8651-SEC1 — Database Management, Conestoga College  
- **Date:** December 8, 2024
