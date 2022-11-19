import pandas as pd

print("creating dataframe")
data_dic = {'num0': [2, 4, 6], 'num1': [8, 10, 12], 'num2': [14, 16, 18], 'num3': [20, 22, 24], 'num4': [26, 28, 30]}
df = pd.DataFrame(data_dic)
print(type(df), "\n", df)

print("="*80, "\n naming the name of index and columns in dataframe")
df = pd.DataFrame([[30, 'Female', 'GJ'], [32, 'Male', 'YG']], index=['oochoo', 'mydong'],
                  columns=['age', 'sex', 'hometown'])
print(df, "\n", df.index, "\n", df.columns)

print("="*80, "\n revising the name of index and columns in dataframe")
df.index = ['dalgom', 'puleum']
df.columns = ['How old-years', 'F/M', 'From']
print(df, "\n", df.index, "\n", df.columns, "\n", "*"*80)

df.rename(columns={'How old-years': 'age2', 'F/M': 'sex2', 'From': 'hometown2'}, inplace=True)
df.rename(index={'dalgom': 'oochoo_1', 'puleum': 'mydong_2'}, inplace=True)
print(df, "\n", df.index, "\n", df.columns)

print("="*80, "\n deleting the row or column in dataframe")
family_data = {'oochoo': [93, 11, 18], 'mydong': [91, 5, 27], 'dalgom': [22, 1, 15], 'puleum': [21, 1, 4]}
df = pd.DataFrame(family_data, index=['year', 'month', 'date'])
print(df, "\n", "*"*80)

df_1 = df.copy()
df_1.drop('year', inplace=True)
print(df_1, "\n", "*"*80)

df_2 = df.copy()
df_2.drop('puleum', axis=1, inplace=True)
print(df_2, "\n", "*"*80)

df_3 = df.copy()
df_3.drop(['year', 'month'], axis=0, inplace=True)
print(df_3, "\n", "*"*80)

df_4 = df.copy()
df_4.drop(['oochoo', 'mydong'], axis=1, inplace=True)
print(df_4)

print("="*80, "\n selecting rows of dataframe")
label1 = df.loc['year']
print(label1, "\n", "*"*80)
label2 = df.loc[['month', 'date']]
print(label2, "\n", "*"*80)
label3 = df.loc['month':'date']
print(label3, "\n", "*"*80)

position1 = df.iloc[0]
print(position1, "\n", "*"*80)
position2 = df.iloc[[1, 2]]
print(position2, "\n", "*"*80)
position3 = df.iloc[1:2]
print(position3)

print("="*80, "\n selecting columns of dataframe")
col_1 = df.dalgom
print(type(col_1), "\n", col_1, "\n", "*"*80)
col_2 = df['oochoo']
print(type(col_2), "\n", col_2, "\n", "*"*80)
col_3 = df[['oochoo']]
print(type(col_3), "\n", col_3, "\n", "*"*80)
col_4 = df[['mydong', 'puleum']]
print(type(col_4), "\n", col_4)


print("="*80, "\n selecting the elements of dataframe")
element_1 = df.loc['month', 'mydong']
print("element", type(element_1), "\n", element_1, "\n", "*"*80)
element_2 = df.iloc[1, 1]
print(type(element_2), "\n", element_2, "\n", "*"*80)

elements_1 = df.loc['month', ['mydong', 'puleum']]
print(type(elements_1), "\n", elements_1, "\n", "*"*80)
elements_2 = df.iloc[1, [1, 3]]
print(type(elements_2), "\n", elements_2, "\n", "*"*80)
elements_3 = df.loc['month', 'mydong':'puleum']
print(type(elements_3), "\n", elements_3, "\n", "*"*80)
elements_4 = df.iloc[1, 1:]
print(type(elements_4), "\n", elements_4, "\n", "*"*80)

elements_5 = df.loc[['year', 'month'], ['mydong', 'puleum']]
print(type(elements_5), "\n", elements_5, "\n", "*"*80)
elements_6 = df.iloc[[0, 1], [1, 3]]
print(type(elements_6), "\n", elements_6, "\n", "*"*80)
elements_7 = df.loc['year':'month', 'mydong':'puleum']
print(type(elements_7), "\n", elements_7, "\n", "*"*80)
elements_8 = df.iloc[0:1, 1:]
print(type(elements_8), "\n", elements_8)

print("="*80, "\n adding columns on dataframe")
df['Are you happy?'] = ["Yes", "Yes~", "Yes!!"]
print(df)

print("="*80, "\n adding rows on dataframe")
df.loc[4] = "wow"
print(df, '\n', "*"*80)
df.loc[5] = ["We", "are", "a", "family", "!"]
print(df, '\n', "*"*80)
df.loc['new_row'] = df.loc[4]
print(df)
