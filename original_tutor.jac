import python random;
import python byllm.llm { Model };

# Initialize the LLM model (replace with actual available model)
glob llm = Model(model_name="gemini/gemini-2.0-flash", verbose=False);

# List of simple science questions
glob questions = [
    {"q": "What planet is known as the Red Planet?", "a": "Mars"},
    {"q": "What gas do humans need to survive?", "a": "Oxygen"},
    {"q": "What force pulls objects toward Earth?", "a": "Gravity"},
    {"q": "What is H2O commonly known as?", "a": "Water"},
];

"""AI-powered explanation of the correct answer"""
def explain_answer(user_answer: str, correct_answer: str) -> str by llm();

walker QuizTutor {
    has score: int = 0;

    can start with `root entry;
    can ask_question with session entry;
}

node session {
    has chosen = random.choice(questions);
}

with entry: __main__ {
    root spawn QuizTutor();
}