glob questions = [
    {"q": "What planet is known as the Red Planet?", "a": "Mars"},
    {"q": "What gas do humans need to survive?", "a": "Oxygen"},
    {"q": "What force pulls objects toward Earth?", "a": "Gravity"},
    {"q": "What is H2O commonly known as?", "a": "Water"}
];

walker QuizTutor {
    has score: int = 0;
    has current_question: int = 0;
}

node session {
    has question_data: dict;
}

with entry:__main__ {
    root ++> session(question_data=questions[0]);
    
    tutor = spawn here walker QuizTutor();
    
    print("Welcome to Science Quiz!");
    print(f"Question: {questions[0]['q']}");
    
    user_answer = "Mars";  # Simulate user input
    correct_answer = questions[0]["a"];
    
    if user_answer.lower() == correct_answer.lower() {
        print("Correct! Well done!");
        tutor.score += 1;
    } else {
        print(f"Incorrect. The answer is: {correct_answer}");
    }
    
    print(f"Score: {tutor.score}");
}