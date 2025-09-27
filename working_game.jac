node turn {
    has correct_number: int = 7;
}

walker GuessGame {
    has guess: int;

    can start with root {
        visit [-->](?turn);
    }

    can process_guess with turn {
        if self.guess < here.correct_number {
            print("Too low! Try a bigger number.");
        } elif self.guess > here.correct_number {
            print("Too high! Try a smaller number.");
        } else {
            print("🎉 Correct! You guessed it!");
        }
    }
}

with entry:__main__ {
    root ++> turn();
    spawn here walker GuessGame(guess=3);
    spawn here walker GuessGame(guess=4);
    spawn here walker GuessGame(guess=7);
    spawn here walker GuessGame(guess=9);
}