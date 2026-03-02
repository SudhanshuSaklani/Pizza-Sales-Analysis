import pandas as pd
import os
from sqlalchemy import create_engine
import psycopg2
import logging
import time

logging.basicConfig(
    filename = "logs/ingestion_db.log",
    level = logging.DEBUG,
    format="%(asctime)s - %(levelname)s - %(message)s",
    filemode = "a"
)
username = 'postgres'
password = 'saklani2003'
host = "localhost"
port = "5432"
database = "pizza_sales"

engine = create_engine(f"postgresql+psycopg2://{username}:{password}@{host}:{port}/{database}")

def ingest_db(df, table_name, engine):
    df.to_sql(table_name, con = engine, if_exists = "replace", index = False)

def load_data():
    start = time.time()

    for file in os.listdir('data'):
        if file.endswith(".csv"):

            file_path = os.path.join('data', file)

            try:
                df = pd.read_csv(file_path, encoding="latin1")

                table_name = file.replace(".csv", "")

                ingest_db(df, table_name, engine)

                logging.info(f"{file} ingested successfully.")

            except Exception as e:
                logging.error(f"Error ingesting {file}: {e}")

    end = time.time()
    total_time = (end - start) / 60

    logging.info("Ingestion complete")
    logging.info(f"Total time taken: {total_time} minutes")

if __name__ == '__main__':
    load_data()