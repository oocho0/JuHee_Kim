import pandas as pd

print("dataframe and float")
family1_data = {'oochoo': [93, 11, 18], 'mydong': [91, 5, 27], 'dalgom': [22, 1, 15], 'puleum': [21, 1, 4]}
df_1 = pd.DataFrame(family1_data, index=['year', 'month', 'date'])
print(type(df_1), "\n", df_1, "\n", "*"*80)

add1 = df_1 + 10
print(type(add1), "\n", add1, "\n", "*"*80)
sub1 = df_1 - 10
print(type(sub1), "\n", sub1, "\n", "*"*80)
mul1 = df_1 * 10
print(type(mul1), "\n", mul1, "\n", "*"*80)
div1 = df_1 / 10
print(type(div1), "\n", div1)

print("="*80, "\n dataframe and dataframe")
family2_data = {'oochoo': [80, 4, 30], 'mydong': [82, 10, 21], 'dalgom': [84, 7, 4], 'puleum': [86, 9, 22]}
df_2 = pd.DataFrame(family2_data, index=['year', 'month', 'date'])
print(type(df_2), "\n", df_2, "\n", "*"*80)

add2 = df_1 + df_2
print(type(add2), "\n", add2, "\n", "*"*80)
sub2 = df_1 - df_2
print(type(sub2), "\n", sub2, "\n", "*"*80)
mul2 = df_1 * df_2
print(type(mul2), "\n", mul2, "\n", "*"*80)
div2 = df_1 / df_2
print(type(div2), "\n", div2)
