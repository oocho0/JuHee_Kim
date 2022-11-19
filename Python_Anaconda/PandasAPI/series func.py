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

# DataFrame() 함수로 데이터프레임 변환. 변수 df에 저장
exam_data = {'수학' : [ 90, 80, 70], '영어' : [ 98, 89, 95],
             '음악' : [ 85, 95, 100], '체육' : [ 100, 90, 90]}

df = pd.DataFrame(exam_data, index=['서준', '우현', '인아'])
print(df)       # 데이터프레임 출력
print('\n')

# 행 인덱스를 사용하여 행 1개를 선택
label1 = df.loc['서준']    # loc 인덱서 활용
position1 = df.iloc[0]     # iloc 인덱서 활용
print(label1)
print('\n')
print(position1)
print('\n')

# 행 인덱스를 사용하여 2개 이상의 행 선택
label2 = df.loc[['서준', '우현']]
position2 = df.iloc[[0, 1]]
print(label2)
print('\n')
print(position2)
print('\n')

# 행 인덱스의 범위를 지정하여 행 선택
label3 = df.loc['서준':'우현']
position3 = df.iloc[0:1]
print(label3)
print('\n')
print(position3)