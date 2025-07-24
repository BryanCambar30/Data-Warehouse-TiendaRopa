# 🏬 Proyecto Data Warehouse – Tienda de Ropa

## 📌 Español

Este repositorio contiene un proyecto académico realizado como parte del curso de **Bases de Datos II**, enfocado en el diseño e implementación de un **Data Warehouse** para una tienda de ropa. Su finalidad es permitir el análisis de información histórica de ventas, optimizando la toma de decisiones mediante consultas SQL en SQL Server.

### 🎯 Objetivos del proyecto

- 🕒 Identificar la **hora del día** en la que más se vende
- 🛍️ Determinar el **producto más vendido**
- 🧑‍💼 Conocer el **vendedor con mayor volumen de ventas**

### 🧠 Componentes del sistema

- Modelado dimensional (**Estrella** / **Copito de Nieve**)
- Base de datos en **SQL Server**
- Tablas `fact` y `dimensión`
- Procesos ETL con scripts `.sql`
- Consultas analíticas y reportes en documentos


### 📊 Métricas evaluadas

- Ventas agrupadas por hora (`GROUP BY hora`)
- Ranking de productos (`ORDER BY ventas DESC`)
- Comparativa de vendedores (`RANK OVER()`)

### 👨‍💻 Autor

[Bryan Cambar](https://github.com/BryanCambar30)

> *Este proyecto se publica para compartir conocimientos sobre modelado de datos, procesos ETL y análisis SQL. Ideal para quienes exploran el mundo del Data Warehousing en contextos reales o simulados.*

---

## 🌐 English Version

This repository contains a data analysis project built with **SQL Server**, focused on designing a **Data Warehouse** for a clothing store. Its main goal is to uncover patterns in sales activity and provide insights that support decision-making.

### 🎯 Project Objectives

- 🕒 Identify the **peak sales hour**
- 🛍️ Find the **most sold product**
- 🧑‍💼 Highlight the **top-performing seller**

### 🧠 System Components

- Dimensional modeling (**Star** and/or **Snowflake** schema)
- Fact and Dimension tables
- Data load process (**ETL**) using `.sql` scripts
- Analytical SQL queries in SQL Server

### 📁 Repository Structure


> 💡 *Este proyecto es ideal como base para análisis más complejos, prácticas de ETL, y enseñanza de técnicas de modelado de datos.*

---

## 🌐 English Version

This repository contains an academic project developed for the **Databases II** course, focused on designing and implementing a **Data Warehouse** for a clothing store. Its main goal is to analyze sales history and support strategic decisions using SQL queries in SQL Server.

### 🎯 Project Objectives

- 🕒 Identify the **most active sales hour**
- 🛍️ Determine the **most sold product**
- 🧑‍💼 Find the **top-performing seller**

### 🧠 System Overview

- Dimensional modeling (**Star** / **Snowflake** schema)
- SQL Server database
- Fact and Dimension tables
- ETL process via `.sql` scripts
- Analytical queries and reporting documents

---


### 📊 Evaluated Metrics

- Hourly sales volume (`GROUP BY hora`)
- Product rankings (`ORDER BY sales DESC`)
- Seller performance (`RANK OVER()`)

### 👨‍💻 Author

[Bryan Cambar](https://github.com/BryanCambar30)

> *This project is published to share practical insights in data modeling, ETL workflows, and analytical querying. Ideal for those exploring the world of Data Warehousing in simulated or real-world scenarios.*


