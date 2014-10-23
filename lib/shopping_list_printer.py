# -*- coding: UTF-8 -*-


def format_shopping_list(items):

    if len(items)<1:
        list = "No items in list."
        msg = ""
    else:
        rubrik = len(items)
        rubrik = str(rubrik)
        if rubrik == "1":
            msg = rubrik + " item:"
        else:
            msg = rubrik + " items:"
        number = "\n"
        number = str(number)
        count = 0
        count = int(count)
        list = ""
        for i in items:
            count += 1
            list = list + number + str(count) + " " + i.capitalize()

    return msg + list



items = ["cucumber"]
print format_shopping_list(items=items)
