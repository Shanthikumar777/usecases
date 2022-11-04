import mysql.connector
import pandas as pd
hostname = 'localhost'
db = 'mydatabase'
username = 'root'
pwd = 'root'
port_id = 3306
conn = None
cur = None
try:
    
    
    conn = mysql.connector.connect(
           host = hostname,
           database = db,
           user = username,
           password = pwd,
           port = port_id)
    
    cur = conn.cursor()
    
    cur.execute('select * FROM books')
    data = cur.fetchall()
    df = pd.DataFrame(data,columns = ['BookName','Category','Price','Price_Range'])
    print(df)
    conn.commit()
    
    
except Exception as error:
    print(error)
    
finally:
    if cur is not None:
        cur.close()