import requests
import pandas as pd
from urllib3.exceptions import InsecureRequestWarning
from urllib3 import disable_warnings



disable_warnings(InsecureRequestWarning)



page = requests.get('https://api.coincap.io/v2/assets', verify=False)



#print(page.content)
myjson = page.json()
ourdata = []
csvheader = ['SYMBOL','NAME','PRICE(USD)']





for x in myjson['data']:
    ourdata.append([x['symbol'],x['name'],x['priceUsd']])
df=pd.DataFrame(ourdata,columns=['SYMBOL','NAME','PRICE(USD)'])
print(df)