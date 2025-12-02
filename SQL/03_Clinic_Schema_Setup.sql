-- CLINIC SCHEMA SETUP

CREATE TABLE patients (
    patient_id INTEGER PRIMARY KEY,
    name TEXT,
    phone TEXT
);

CREATE TABLE clinic_sales (
    sale_id INTEGER PRIMARY KEY,
    patient_id INTEGER,
    amount INTEGER,
    sales_channel TEXT,
    sale_date DATE,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);

CREATE TABLE expenses (
    expense_id INTEGER PRIMARY KEY,
    month TEXT,
    expense_amount INTEGER
);
