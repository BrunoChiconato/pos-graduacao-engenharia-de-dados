"""
Prompt the user to enter a date in the format DD/MM/YYYY and print it in full English format.

The program expects the user to input the date in the 'DD/MM/YYYY' format.
It does not handle errors intentionally; if the input format is incorrect, the program may raise an exception.

Example:
    Input: 09/11/2023
    Output: 09 of November of 2023
"""
MONTH_MAPPING = {
    "01": "January",
    "02": "February",
    "03": "March",
    "04": "April",
    "05": "May",
    "06": "June",
    "07": "July",
    "08": "August",
    "09": "September",
    "10": "October",
    "11": "November",
    "12": "December"
}

def main():
    date = input("Enter a date (DD/MM/YYYY): ")
    day, month, year = date.split("/")

    month_name = MONTH_MAPPING.get(month)

    print(f"{day} of {month_name} of {year}")


if __name__ == "__main__":
    main()