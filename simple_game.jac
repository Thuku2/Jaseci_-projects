node turn {
    has correct_number: int = 7;
}

walker GuessGame {
    has guess: int;
}

with entry:__main__ {
    root ++> turn();
    
    guesses = [3, 4, 5, 6, 7, 8];
    
    for g in guesses {
        if g < 7 {
            print(f"Guess {g}: Too low!");
        } elif g > 7 {
            print(f"Guess {g}: Too high!");
        } else {
            print(f"Guess {g}: Correct!");
        }
    }
}