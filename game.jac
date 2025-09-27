import:py random;
import:jac from byllm.llm, Model;

glob llm = Model(model_name="gemini/gemini-2.0-flash", verbose=False);

can give_hint(guess: int, correct_number: int) -> str by llm {
    if guess < correct_number {
        return "Too low! Try a bigger number.";
    } elif guess > correct_number {
        return "Too high! Try a smaller number.";
    } else {
        return "🎉 Correct! You guessed it!";
    }
}

walker GuessGame {
    has guess: int;

    can start with root {
        visit [-->](?turn);
    }

    can process_guess with turn {
        report give_hint(self.guess, here.correct_number);
    }
}

node turn {
    has correct_number: int = random.randint(1, 10);
}

with entry:__main__ {
    root ++> turn();
    spawn here walker GuessGame(guess=3);
    spawn here walker GuessGame(guess=4);
    spawn here walker GuessGame(guess=5);
    spawn here walker GuessGame(guess=6);
}