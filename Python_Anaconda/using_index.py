import pandas as pd

family_data = {'oochoo': [93, 11, 18], 'mydong': [91, 5, 27], 'dalgom': [22, 1, 15], 'puleum': [21, 1, 4]}
df = pd.DataFrame(family_data, index=['year', 'month', 'date'])
print(df, '\n')

print("="*80, "\n row index to set_index()")
df_1 = df.copy()
df_1 = df_1.set_index(["oochoo"])
print(df_1, '\n', "*"*80)
df_2 = df.copy()
df_2 = df_2.set_index("oochoo")
print(df_2, '\n', "*"*80)
df_3 = df.copy()
df_3 = df_3.set_index(["dalgom", "puleum"])
print(df_3)

data_dic = {'num0': [2, 4, 6], 'num1': [8, 10, 12], 'num2': [14, 16, 18], 'num3': [20, 22, 24], 'num4': [26, 28, 30]}
df = pd.DataFrame(data_dic, index=['row_0', 'row_1', 'row_2'])
print(df)

print("="*80, "\n row index to reindex()")
df_4 = df.copy()
df_4 = df_4.reindex(['row_0', 'row_1', 'row_2', 'row_3', 'row_4'])
print(df_4, '\n', "*"*80)

df_5 = df.copy()
df_5 = df_5.reindex(['row_0', 'row_1', 'row_2', 'row_3', 'row_4'], fill_value=0)
print(df_5)

print("="*80, "\n reset row index")
df_6 = df.copy()
df_6 = df_6.reset_index()
print(df_6)

print("="*80, "\n sort by row index")
df_7 = df.copy()
df_7 = df_7.sort_index(ascending=False)
print(df_7)

print("="*80, "\n sort by a column")
df_8 = df.copy()
df_8 = df_8.sort_values(by='num3', ascending=False)
print(df_8)
