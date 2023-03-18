from datetime import date

class DateTricks():

    def get_start_date(self):
        today = date.today()

        fdate = today.strftime('%m%d%Y')

        print(fdate)

        array_chars = []

        for number in fdate:
            array_chars.append(number)

        return array_chars

        