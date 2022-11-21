import pandas as pd
import numpy as np

print("series and float")
oochoo0 = pd.Series({'math': 90, 'Korean': 100, 'computer': 85})
print("oochoo0", type(oochoo0), "\n", oochoo0, "\n", "*"*80)

div_200 = oochoo0 / 200
print(type(div_200), "\n", div_200)

print("="*80, "\n series and series")
oochoo1 = pd.Series({'math': 90, 'Korean': 100, 'computer': 85})
mydong1 = pd.Series({'Korean': 90, 'math': 95, 'computer': 100})
print("oochoo1", type(oochoo1), "\n", oochoo1, "\n", "*"*80)
print("mydong1", type(mydong1), "\n", mydong1, "\n", "*"*80)

add1 = oochoo1 + mydong1
print(type(add1), "\n", add1, "\n", "*"*80)
sub1 = oochoo1 - mydong1
print(type(sub1), "\n", sub1, "\n", "*"*80)
mul1 = oochoo1 * mydong1
print(type(mul1), "\n", mul1, "\n", "*"*80)
div1 = oochoo1 / mydong1
print(type(div1), "\n", div1, "\n", "*"*80)
result1 = pd.DataFrame([add1, sub1, mul1, div1], index=['+', '-', '*', '/'])
print(result1)

print("="*80, "\n series and series with NaN -wrong")
oochoo2 = pd.Series({'math': np.nan, 'Korean': 100, 'computer': 85})
mydong2 = pd.Series({'math': 95, 'computer': 100})
print("oochoo2", type(oochoo2), "\n", oochoo2, "\n", "*"*80)
print("mydong2", type(mydong2), "\n", mydong2, "\n", "*"*80)

add2 = oochoo2 + mydong2
print(type(add2), "\n", add2, "\n", "*"*80)
sub2 = oochoo2 - mydong2
print(type(sub2), "\n", sub2, "\n", "*"*80)
mul2 = oochoo2 * mydong2
print(type(mul2), "\n", mul2, "\n", "*"*80)
div2 = oochoo2 / mydong2
print(type(div2), "\n", div2, "\n", "*"*80)
result2 = pd.DataFrame([add2, sub2, mul2, div2], index=['+', '-', '*', '/'])
print(result2)

print("="*80, "\n series and series with NaN -fix the problem")
oochoo3 = pd.Series({'math': np.nan, 'Korean': 100, 'computer': 85})
mydong3 = pd.Series({'math': 95, 'computer': 100})
print("oochoo3", type(oochoo3), "\n", oochoo3, "\n", "*"*80)
print("mydong3", type(mydong3), "\n", mydong3, "\n", "*"*80)

add3 = oochoo3.add(mydong3, fill_value=0)
sub3 = oochoo3.sub(mydong3, fill_value=0)
mul3 = oochoo3.mul(mydong3, fill_value=0)
div3 = oochoo3.div(mydong3, fill_value=0)

result = pd.DataFrame([add3, sub3, mul3, div3], index=['+', '-', '*', '/'])
print(result)
