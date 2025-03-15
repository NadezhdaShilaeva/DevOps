import psycopg2
import os

name = os.getenv("DB_NAME")
user = os.getenv("DB_USER")
password = os.getenv("DB_PASSWORD")
host = os.getenv("DB_HOST")
port = os.getenv("DB_PORT")


try:
    conn = psycopg2.connect(dbname=name, user=user, password=password, host=host, port=port)
    print("Connected successfully")
except Exception as e:
    print(f'Can`t establish connection to database with - {e}')
