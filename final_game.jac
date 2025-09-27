node turn {
    has correct_number: int = 7;
}

with entry:__main__ {
    root ++> turn();
    
    guesses = [3, 4, 5, 6, 7, 8, 9];
    
    for guess in guesses {
        if guess < 7 {
            print(f"Guess {guess}: Too low! Try a bigger number.");
        } elif guess > 7 {
            print(f"Guess {guess}: Too high! Try a smaller number.");
        } else {
            print(f"Guess {guess}: Correct! You guessed it!");
        }
    }
}