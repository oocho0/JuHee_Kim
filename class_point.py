def used_points(name, points):
    if name == "oochoo":
        global balance_oochoo
        balance_oochoo += points
    elif name == "mydong":
        global balance_mydong
        balance_mydong += points
    elif name == "dalgom":
        global balance_dalgom
        balance_dalgom += points


def current_available_points(name):
    if name == "oochoo":
        print("%s의 현재 가용 포인트는 %s점 입니다." % (name, format(balance_oochoo, ',')))
    elif name == "mydong":
        print("%s의 현재 가용 포인트는 %s점 입니다." % (name, format(balance_mydong, ',')))
    elif name == "dalgom":
        print("%s의 현재 가용 포인트는 %s점 입니다." % (name, format(balance_dalgom, ',')))


oochoo = "oochoo"
mydong = "mydong"
dalgom = "dalgom"

balance_oochoo = 8000
balance_mydong = 8000
balance_dalgom = 8000

used_points(oochoo, 1000)
current_available_points(oochoo)

used_points(mydong, 2000)
current_available_points(mydong)

used_points(dalgom, 3000)

current_available_points(dalgom)
