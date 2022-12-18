import pandas as pd

print("dictionary to series")
dic_kv = {"oochoo": 30, "mydong": 32, "dalgom": 1}
data_series1 = pd.Series(dic_kv)
print(type(data_series1), "\n")
print(data_series1, "\n\n", "="*70)

print("list to series")
data_list = ['Dalgom', 3, '2022-11-17', False, 5.18]
data_series2 = pd.Series(data_list)
print(data_series2, "\n")
se_idx = data_series2.index
se_val = data_series2.values
print(se_idx, ":", se_val, "\n\n", "="*70)

print("tuple to series")
data_tuple = ('oochoo', '2022-11-17', 'Soup', False)
data_series3 = pd.Series(data_tuple, index=['nickname', 'date', 'like_food', 'have_car'])
print(data_series3, "\n\n", "="*70)

print("indexing")
print(data_series3[0], "\n")
print(data_series3[[1, 3]], "\n")
print(data_series3[1: 3], "\n\n", "="*70)

print("using index_name")
print(data_series3['nickname'], "\n")
print(data_series3[['date', 'have_car']], "\n")
print(data_series3['date': 'have_car'])
