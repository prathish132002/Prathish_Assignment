PlatinumRx Data Analyst Assignment

This repository contains my completed solution for the PlatinumRx Data Analyst Assessment.
It includes work across SQL, Spreadsheet Analysis, and Python scripting as per the assignment requirements.

📂 Repository Structure
Prathish_Assignment/
│
├── SQL/
│   ├── 01_Hotel_Schema_Setup.sql
│   ├── 02_Hotel_Queries.sql
│   ├── 03_Clinic_Schema_Setup.sql
│   └── 04_Clinic_Queries.sql
│
├── Spreadsheets/
│   └── (Google Sheets link provided below)
│
├── Python/
│   ├── 01_Time_Converter.py
│   └── 02_Remove_Duplicates.py
│
└── README.md

🏨 SQL Work Summary
Hotel Management System

Created tables: users, bookings, items, booking_commercials

Wrote analytical SQL queries to identify:

Last room booked

Billing in November 2021

Bills greater than 1000

Most/least ordered items per month (using window functions)

Second-highest bill amount

Clinic Management System

Created tables: patients, clinic_sales, expenses

Wrote SQL queries to compute:

Revenue by sales channel

Monthly profit/loss (Revenue – Expenses)

📊 Spreadsheet Analysis (Google Sheets)

Google Sheet includes:

ticket dataset with timestamps

feedbacks dataset with lookup field filled

ticket_created_at populated using VLOOKUP

Helper columns:

same_day → ticket created & closed on same date

same_hour → created & closed within same hour

Pivot tables summarizing outlet-wise statistics:

Count of tickets closed on the same day

Count of tickets closed within the same hour

🔗 Google Sheets Link:
Paste your link here

🐍 Python Scripts
1️⃣ Time Converter

File: 01_Time_Converter.py
Converts a given number of minutes into hours and minutes using integer division and modulo.

2️⃣ Remove Duplicate Characters

File: 02_Remove_Duplicates.py
Iterates through a string to remove repeated characters while maintaining order.

✅ Status

All assignment components — SQL, Spreadsheets, and Python — have been fully implemented and tested.
This repository is organized to clearly demonstrate the analytical workflow end-to-end.
