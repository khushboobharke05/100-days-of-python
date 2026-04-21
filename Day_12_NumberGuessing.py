import random
from art import logo
print(logo)

EASY_LEVEL_TURN = 10
HARD_LEVEL_TURN = 5

# Function to check user guess against actual number
def check_answer(user_guess , actual_number , turns):
    if user_guess > actual_number:
        print("Too high!")
        return turns -1
    elif user_guess < actual_number:
        print("Too low!")
        return turns -1
    else:
        print(f"You got it! The number was {actual_number}.")
#Difficulty
def set_difficulty():
    level = input("Choose a difficulty level. Type 'easy' or 'hard':")
    if level == "easy":
        return EASY_LEVEL_TURN
    else:
        return HARD_LEVEL_TURN

def game():
    print("Welcome to the Number Guessing Game!")
    print("Im thinking of a number between 1 and 100.")
    number = random.randint(1, 100)

    turns = set_difficulty()


    guess = 0
    while guess != number:
        print(f"You have {turns} attempts remaining to guess the number.")

        guess = int(input("Make a guess :"))
        turns =  check_answer(guess , number , turns)
        if turns == 0:
            print("You've run out of guesses!You lose.")
            return
        elif guess != number:
            print("Guess again!")

game()
