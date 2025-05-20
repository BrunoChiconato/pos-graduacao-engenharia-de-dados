"""Prompt for three student scores, calculate the average, and display the result.

The program classifies the student's performance based on the average score:
    - Average < 3: 'FAILED'
    - 3 <= Average < 7: 'EXAM'
    - 7 <= Average <= 10: 'PASSED'
"""
def main():
    first_score = float(input("Enter your first score (0-10): "))
    second_score = float(input("Enter your second score (0-10): "))
    third_score = float(input("Enter your third score (0-10): "))

    if first_score > 0 and second_score > 0 and third_score > 0:
            avg_score = (first_score + second_score + third_score)/3

            if avg_score < 3:
                print("FAILED")
            elif avg_score < 7:
                print("EXAM")
            else:
                print("PASSED")

    else:
        print("Negative inputs are not allowed!")


if __name__ == "__main__":
    main()