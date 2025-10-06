#!/bin/bash

poetry_core() {
    poetry add ipykernel numpy pandas matplotlib seaborn scipy prettytable
    poetry install
}

poetry_sql() {
    poetry add sqlalchemy psycopg2-binary python-dotenv
    poetry install
}

poetry_ml() {
    poetry add scikit-learn
    poetry install
}