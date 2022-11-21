import pandas as pd

print("read csv file")
df_1 = pd.read_csv('./read_csv_sample.csv')
print(df_1, "\n", "*"*80)
df_2 = pd.read_csv('./read_csv_sample.csv', header=None)
print(df_2, "\n", "*"*80)
df_3 = pd.read_csv('./read_csv_sample.csv', index_col=None)
print(df_3, "\n", "*"*80)
df_4 = pd.read_csv('./read_csv_sample.csv', index_col='c0')
print(df_4)
