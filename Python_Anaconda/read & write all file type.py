import pandas as pd
import xlrd
import openpyxl
from bs4 import BeautifulSoup
import requests
import re
import googlemaps

print("read csv")
df_1 = pd.read_csv('data/read_csv_sample.csv')
print(df_1, "\n", "*" * 80)
df_2 = pd.read_csv('data/read_csv_sample.csv', header=None)
print(df_2, "\n", "*" * 80)
df_3 = pd.read_csv('data/read_csv_sample.csv', index_col=None)
print(df_3, "\n", "*" * 80)
df_4 = pd.read_csv('data/read_csv_sample.csv', index_col='c0')
print(df_4)

print("=" * 80, "\n read excel")
df_5 = pd.read_excel('data/남북한발전전력량.xlsx', engine='openpyxl')
df_6 = pd.read_excel('data/남북한발전전력량.xlsx', engine='openpyxl', header=None)
print(df_5, "\n", "*" * 80)
print(df_6, "\n", "*" * 80)

print("=" * 80, "\n read json")
df_7 = pd.read_json('data/read_json_sample.json')
print(df_7, '\n', df_7.index)

print("=" * 80, "\n read html")
tables = pd.read_html('data/sample.html')
print(len(tables))
for i in range(len(tables)):
    print("tables[%s]" % i)
    print(tables[i], '\n')
df_8 = tables[1]
df_8.set_index(['name'], inplace=True)
print(df_8)

print("=" * 80, "\n read etf list")
resp = requests.get("https://en.wikipedia.org/wiki/List_of_American_exchange-traded_funds")
soup = BeautifulSoup(resp.text, 'lxml')
rows = soup.select('div > ul > li')
etfs = {}
for row in rows:
    try:
        etf_name = re.findall('^(.*) \(NYSE', row.text)
        etf_market = re.findall('\((.*)\|', row.text)
        etf_ticker = re.findall('NYSE Arca\|(.*)\)', row.text)
        if (len(etf_ticker) > 0) & (len(etf_market) > 0) & (len(etf_name) > 0):
            etfs[etf_ticker[0]] = [etf_market[0], etf_name[0]]
    except AttributeError as err:
        pass
print(type(etfs), "\n", etfs, "\n", "*" * 80)
df_8 = pd.DataFrame(etfs)
print(df_8)

"""
print("=" * 80, "\n read google geocoding API")
maps = googlemaps.Client(key="my_key")  # my key값 입력
lat = []
lng = []
i = 0
for place in ["광화문", "협재해수욕장", "예술의전당"]:
    i = i + 1
    try:
        print(i, place)
        geo_location = maps.geocode(place)[0].get('geometry')
        lat.append(geo_location['location']['lat'])
        lng.append(geo_location['location']['lng'])
        
    except:
        lat.append('')
        lng.append('')
        print(i)
df_9 = pd.DataFrame({'위도': lat, '경도': lng}, index=places)
print(df_9)
"""

print("=" * 80, "\n write csv")
family_data = {"num": [0, 1, 2], 'oochoo': [93, 11, 18], 'mydong': [91, 5, 27], 'dalgom': [22, 1, 15],
               'puleum': [21, 1, 4]}
df_10 = pd.DataFrame(family_data, index=['year', 'month', 'date'])
df_10.set_index('num', inplace=True)
print(df_10)
df_10.to_csv("output/df_10.csv")

print("=" * 80, "\n write json")
family_data = {"num": [0, 1, 2], 'oochoo': [93, 11, 18], 'mydong': [91, 5, 27], 'dalgom': [22, 1, 15],
               'puleum': [21, 1, 4]}
df_11 = pd.DataFrame(family_data, index=['year', 'month', 'date'])
df_11.set_index('num', inplace=True)
print(df_11)
df_11.to_json("output/df_11.json")

print("=" * 80, "\n write excel basic")
family_data = {"num": [0, 1, 2], 'oochoo': [93, 11, 18], 'mydong': [91, 5, 27], 'dalgom': [22, 1, 15],
               'puleum': [21, 1, 4]}
df_12 = pd.DataFrame(family_data, index=['year', 'month', 'date'])
df_12.set_index('num', inplace=True)
print(df_12)
df_12.to_excel("output/df_12.xlsx")

print("=" * 80, "\n write excel into several sheets")
family_data = {'num': ['zero', 'one', 'two'], 'oochoo': ["ninety_three", "eleven", "eighteen"],
               'mydong': ["ninety_one", "five", "twenty_seven"], 'dalgom': ["twenty_two", "one", "fifteen"]}
number_data = {'col_0': [0, 1, 2], 'col_1': [93, 11, 18], 'col_2': [91, 5, 27], 'col_3': [22, 1, 15],
               'col_4': [22, 1, 4]}

df_13 = pd.DataFrame(family_data)
df_13.set_index('num', inplace=True)
print(df_13, "\n", "*" * 80)

df_14 = pd.DataFrame(number_data)
df_14.set_index('col_0', inplace=True)
print(df_14)

write_sheets = pd.ExcelWriter("output/df_13and14.xlsx")
df_13.to_excel(write_sheets, sheet_name="family")
df_14.to_excel(write_sheets, sheet_name="number")
write_sheets.save()
