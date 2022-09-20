class Animal:
    def __init__(self, age, name):
        self.age = age
        self.name = name

    def identification(self):
        print(f"This animal is {self.name}. and it is {str(self.age)} years old.")

    def feed(self):
        print("feeding 2-times a day.")


class Dog(Animal):
    def __init__(self, age, name, dog_num):
        super().__init__(age, name)
        self.dog_num = dog_num

    def identification(self):
        super().identification()
        print(f"This dog has its own pet registration number, {self.dog_num}.")

    def barking_sound(self):
        print(" woof, ruff, arf, bow wow, yap, yip")


kim = Animal(12, "Yea-sol")
kim.identification()
kim.feed()
print("-*-" * 10)
lee = Dog(0, "dal-gom", 410160012274388)
lee.identification()
lee.barking_sound()
lee.feed()
print(lee.dog_num)
print(lee.name)
print(lee.age)
