glob questions = [
    {"q": "What planet is known as the Red Planet?", "a": "Mars"},
    {"q": "What gas do humans need to survive?", "a": "Oxygen"},
    {"q": "What force pulls objects toward Earth?", "a": "Gravity"},
    {"q": "What is H2O commonly known as?", "a": "Water"}
];

walker QuizTutor {
    has score: int = 0;
}

with entry: __main__ {
    tutor = spawn here walker QuizTutor();
    
    print("Welcome to Science Quiz!");
    
    # Ask first question
    question = questions[0];
    print(f"Question: {question['q']}");
    
    # Simulate user answer
    user_answer = "Mars";
    correct_answer = question["a"];
    
    if user_answer == correct_answer {
        print("Correct!");
        tutor.score += 1;
    } else {
        print(f"Wrong! Answer is: {correct_answer}");
    }
    
    print(f"Score: {tutor.score}");
}