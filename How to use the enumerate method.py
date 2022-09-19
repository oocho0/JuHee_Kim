print('sequence\n')
score = [88, 95, 70, 100, 99]
no = 1

for s in score:
    print(str(no) + "번 학생의 성적 :", s)
    no += 1
print("-" * 50)

for no in range(len(score)):
    print(str(no + 1) + "번 학생의 성적 :", score[no])
print("-" * 50)

print('enumerate의 편리함')
for t, s in enumerate(score, 1):
    print(str(t) + "번 학생의 성적 :", s)
print("-" * 50)

print('enumerate 결과물')
for data in enumerate(score, 1):
    print(data)
print("*" * 50 + '\n' + "*" * 50)

print("\nunpacking for seperating the indexes and values in a list\n")
for i, v in enumerate(['tic', 'tac', 'toe']):
    print(i, v)
print("*" * 50 + '\n' + "*" * 50 + '\n')

print({i: j for i, j in enumerate("TEAMLAB is an academic institute located in South Korea.".split(), 1)})
print("*" * 50 + '\n' + "*" * 50)

print('\nlist를 index값과 value값으로 나누어 data를 다루는 것의 장점\n1. value값 재정열 가능\n')
names = "둘리,고길동,희동이,마이콜,또치,도우너"
namelist = names.split(",")
print("정렬 전 :", namelist)
print("-" * 50)
namelist.sort()
print("정렬 후 :", namelist)
print("-" * 50)

print('\n2. value값 이름순으로 재정렬\n')
for num, name in enumerate(namelist):
    print(f"이름순으로 {name}는 {num + 1}번입니다.")
print("-" * 50)

print('\n3. enumerate 결과물\n')
for data in enumerate(namelist):
    print(f"enumerate를 적용한 결과 : {data}")
print("-" * 50)

print('\n4. enumerate의 start값을 100으로 변경한 재정렬 결과\n')
for num, name in enumerate(namelist, 100):
    print(f"이름순으로 {name}는 {num}번입니다.")
print("*" * 50 + '\n' + "*" * 50)
