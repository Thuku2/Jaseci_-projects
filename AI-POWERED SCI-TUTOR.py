from byllm.llm import Model

# Initialize the LLM model
glob_llm = Model("gemini/gemini-2.0-flash", verbose=False)

def explain_answer(user_answer: str, correct_answer: str) -> str:
    """
    Uses the LLM to explain whether an answer is correct or not.
    """
    prompt = f"Explain why the answer '{user_answer}' is correct or incorrect compared to '{correct_answer}'."
    response = glob_llm.generate(prompt)
    return response
import pyfunc with "quiz_helper.py";

walker QuizTutor {
    has score: int = 0;
    has user_answer: str;
    has correct_answer: str;

    can start with root entry {
        report "Quiz started!";
    }

    can ask_question with session entry {
        report "Asking a question...";
    }

    can check_answer with session entry {
        explanation = pyfunc.explain_answer(self.user_answer, self.correct_answer);
        report explanation;
    }
}

node session {
    has chosen = 0;
}

with entry: __main__ {
    root spawn QuizTutor;
}


