from sqlalchemy import create_engine
import pandas as pd

DATABASE_URL = "sqlite:///../database/telco.db"

engine = create_engine(DATABASE_URL)

def get_connection():
    return engine

def load_dataframe(df, table_name):
    df.to_sql(table_name, engine, if_exists="replace", index=False)
    print(f"{table_name} loaded successfully!")

def read_query(query):
    return pd.read_sql(query, engine)