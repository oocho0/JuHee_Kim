one = 2
two = 3
calc_multi = one * two

print(str(one) + " X " + str(two) + " = " + str(calc_multi), end=" ***\n")
# inter-printer 입장에서는 +로 엮인 elements를 한 뭉치로 받아 드리기 때문에 이 때는 sep=이 실행되지 않는다.
print(one, "X", two, "=", calc_multi, sep=" ", end=" ***\n")
print(("{} X {} = {}".format(one, two, calc_multi)), end=" ***\n")
print(f"{one} X {two} = {calc_multi}", end=" ***\n")
print("%s X %s = %s" % (one, two, calc_multi), end=" ***")
