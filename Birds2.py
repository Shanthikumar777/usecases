import mysql.connector
import pandas as pd



hostname = 'localhost'
db = 'usecase2'
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
    
    cur.execute('select * FROM birds')
    data = cur.fetchall()
    df = pd.DataFrame(data,columns = ['ID','BirdName','TypeOfBird','ScientificName'])
    print(df)
    conn.commit()
    
    
except Exception as error:
    print(error)
    
finally:
    if cur is not None:
        cur.close()