import pandas as pd
import numpy as np

print("series and float")
oochoo = pd.Series({'math': 90, 'Korean': 100, 'computer': 85})
print("oochoo", type(oochoo), "\n", oochoo, "\n", "*"*80)

div_200 = oochoo / 200
print(type(div_200), "\n", div_200)

print("="*80, "\n series and series")
oochoo = pd.Series({'math': 90, 'Korean': 100, 'computer': 85})
mydong = pd.Series({'Korean': 90, 'math': 95, 'computer': 100})
print("oochoo", type(oochoo), "\n", oochoo, "\n", "*"*80)
print("mydong", type(mydong), "\n", mydong, "\n", "*"*80)

add = oochoo + mydong
print(type(add), "\n", add, "\n", "*"*80)
sub = oochoo - mydong
print(type(sub), "\n", sub, "\n", "*"*80)
mul = oochoo * mydong
print(type(mul), "\n", mul, "\n", "*"*80)
div = oochoo / mydong
print(type(div), "\n", div, "\n", "*"*80)
result = pd.DataFrame([add, sub, mul, div],
                      index=['addition', 'subtraction', 'multiplication', 'division'])
print(result)

print("="*80, "\n series and series with NaN")
