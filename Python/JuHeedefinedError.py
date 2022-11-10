class NoNegativeNumberError(Exception):

    def __init__(self, abc):

        super().__init__('User defined Error by oochoo  : ' + abc)
