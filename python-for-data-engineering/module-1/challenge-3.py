"""Prompt the user for two integers and print all integers between them.

The script reads two integer inputs from the user and prints all
the integers that lie strictly between the smaller and the larger
of the two numbers. If both numbers are equal, it notifies the user
that there are no numbers between them.
"""
def main():
    first_num = int(input("Enter the first integer: "))
    second_num = int(input("Enter the second integer: "))

    if first_num > second_num:
        for num in range(second_num + 1, first_num):
            print(num)
    elif first_num < second_num:
        for num in range(first_num + 1, second_num):
            print(num)
    else:
        print("Both numbers are equal; there are no numbers between them.")


if __name__ == "__main__":
    main()