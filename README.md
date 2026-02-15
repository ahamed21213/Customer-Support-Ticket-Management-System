# 🎫 Customer Support Ticket Management System  
### End-to-End SQL & Power BI Analytics Project (ITSM Focused)

---

## 📌 Project Summary

This project is a **real-world simulation of a Customer Support / ITSM system** used by organizations to manage customer tickets, monitor agent performance, and track Service Level Agreements (SLA).

It demonstrates an **end-to-end analytics workflow**:
- Relational database design using SQL
- Analytical querying and business logic
- Executive-level dashboarding using Power BI

The project is built to reflect **actual business scenarios**, not toy examples, and is suitable for **interview discussion and portfolio review**.

---

## 🎯 Business Problem Statement

Customer support teams face challenges such as:
- SLA breaches due to delayed resolution
- Uneven workload distribution among agents
- Lack of visibility into agent performance
- Difficulty identifying bottlenecks quickly

This project addresses these problems by transforming raw ticket data into **clear, actionable insights**.

---

## 🛠️ Technology Stack

- **Database:** MySQL / SQL Server  
- **Language:** SQL (DDL, DML, Joins, Stored Procedures)  
- **Visualization:** Power BI  
- **Concepts:**  
  - Relational Data Modeling  
  - KPI Design  
  - SLA Metrics  
  - Conditional Formatting  
  - Business Analytics  

---

## 🗂️ Data Model & Schema

The database is **normalized and relational**, following best practices.

### Core Tables:

| Table Name | Description |
|----------|------------|
| Customers | Customer master data |
| Agents | Support agent details (role, shift) |
| Tickets | Ticket lifecycle data |
| Ticket_Status | Status tracking (Open, In Progress, Closed) |

---

## 📊 Dataset Scale (Enterprise-Like)

- **Customers:** 400+  
- **Agents:** 30+  
- **Tickets:** 5,000+  
- **Time Period:** Multi-month operational data  

This scale ensures:
- Meaningful averages  
- Realistic SLA breach patterns  
- Credible agent performance comparison  

---

## ⚙️ SQL Implementation

### Database Operations:
- CRUD operations for all core entities  
- Stored procedures for ticket updates  
- Optimized JOIN queries for reporting  

### Analytical Queries:
- Open vs Closed tickets  
- Tickets handled per agent  
- Average resolution time  
- SLA breach identification  

---

## 📈 Power BI Dashboard

The Power BI dashboard is designed for **both operational teams and management**.

### Key KPIs:
- Total Tickets  
- Open Tickets  
- Closed Tickets  
- Average Resolution Hours  
- SLA Breach Count  
- SLA Compliance Percentage  

---

### 🔹 Agent Performance Analysis
- Tickets per agent  
- Average resolution time per agent  
- SLA breach count per agent  

**Conditional Formatting Logic:**
- 🟢 Green → Good performance (fast resolution)
- 🟡 Yellow → Acceptable / watch zone
- 🔴 Red → SLA risk / underperformance  

This enables **instant identification of problem areas**.

---

### 🔹 SLA Monitoring
- SLA thresholds defined using business rules
- Visual indicators for breach severity
- Supports proactive decision-making

---

## 🎨 Advanced Dashboard Features

- Rule-based conditional formatting (icons & colors)
- Business-driven thresholds (not random values)
- Clean visual hierarchy for fast readability
- Scalable model for future enhancements

---

## 🧠 Insights & Outcomes

- Identified agents with frequent SLA breaches  
- Highlighted resolution delays across categories  
- Exposed workload imbalance among agents  
- Enabled management to prioritize corrective actions  

---

## 🚀 Why This Project Is Strong

✔ End-to-end implementation (SQL → Power BI)  
✔ Realistic, large-scale dataset  
✔ Business-oriented KPIs and logic  
✔ Interview-ready explanations  
✔ Reflects real ITSM / support analytics use cases  

This project goes beyond charts and focuses on **decision support**.

---

## ▶️ How to Run the Project

1. Import SQL scripts into MySQL / SQL Server  
2. Populate tables with sample data  
3. Open the Power BI `.pbix` file  
4. Refresh data connections  
5. Explore dashboards and insights  

---

## 🔮 Future Enhancements

- Priority-based SLA rules  
- Monthly / weekly trend analysis  
- Customer satisfaction integration  
- Role-based dashboards (Manager vs Agent)  

---

## 👤 Author

**Erfan Ahamed**  
Aspiring Data Analyst | SQL | Power BI  

📌 *This project is built for learning, interviews, and real-world analytics simulation.*

