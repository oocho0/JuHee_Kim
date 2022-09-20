from JuHeedefinedError import NoNegativeNumberError


def set_height(height):
    if height <= 0:
        raise NoNegativeNumberError('height can not be less than Zero.')

    else:
        print(f"your height is  {height}!!")


try:
    set_height(int(input("enter the your height : ")))

except NoNegativeNumberError as e:
    print(e)

except ValueError:
    print("please enter the integer only and try again.")

finally:
    print("Terminates code execution.")
