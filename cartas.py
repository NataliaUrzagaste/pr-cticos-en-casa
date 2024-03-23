import random

def compare_numbers():
    num_rounds = 4
    user_wins = 0

    for i in range(num_rounds):
        attempts = 0
        user_numbers = []
        random_number = random.randint(1, 13)

        print(f"Round {i+1}.")
        print("Enter a number between 1 and 13:")

        while attempts < 4:
            user_number = int(input("> "))

            if user_number in user_numbers:
                print("You have already tried that number. Try again.")
            elif user_number == random_number:
                print("Congratulations! You win! The random number was:", random_number)
                user_wins += 1
                break
            else:
                user_numbers.append(user_number)
                attempts += 1
                print("Sorry, you lose. The random number was:", random_number)

            user_numbers.clear()
            random_number = random.randint(1, 13)

        if user_wins > 2:
            print("Congratulations! You have won more than half of the rounds. You are a master guesser!")
            return

    print("You have not won more than half of the rounds. You lose.")

compare_numbers()