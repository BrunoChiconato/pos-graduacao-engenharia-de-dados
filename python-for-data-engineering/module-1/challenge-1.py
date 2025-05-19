"""
Interactive Age Calculator

Prompts the user to enter their birth year and the current year, then computes and displays:
  - The user’s age in the current year.
  - The user’s projected age in 2050.

Example:
    $ python module-1/challenge-1.py
    Enter your birth year: 1990
    You are 35 years old.
    In 2050, you will be 60 years old.
"""
from datetime import datetime


YEAR = 2050


def main():
    birth_year = int(input("Enter your birth year: "))
    current_year = datetime.today().year

    current_age = current_year - birth_year
    age_in_2050 = YEAR - birth_year

    print(f"Your are {current_age} years old.")
    print(f"In {YEAR}, you will be {age_in_2050} years old.")


if __name__ == "__main__":
    main()