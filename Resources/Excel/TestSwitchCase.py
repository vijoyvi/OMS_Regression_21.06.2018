def numbers_to_strings(argument):
    switcher = {
        "zero": 1,
        "one": 1,
        2: "two",
    }
    return switcher.get(argument, "nothing")

strres=numbers_to_strings(5)
print strres