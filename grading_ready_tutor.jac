glob questions = [
    {"q": "What planet is known as the Red Planet?", "a": "Mars"},
    {"q": "What gas do humans need to survive?", "a": "Oxygen"},
    {"q": "What force pulls objects toward Earth?", "a": "Gravity"},
    {"q": "What is H2O commonly known as?", "a": "Water"}
];

walker QuizTutor {
    has score: int = 0;
    has total_questions: int = 0;
}

with entry: __main__ {
    tutor = spawn here walker QuizTutor();
    
    print("=== Science Quiz Tutor ===");
    print(f"Total Questions: {len(questions)}");
    print("");
    
    # Loop through ALL questions
    for i in range(len(questions)) {
        question = questions[i];
        tutor.total_questions += 1;
        
        print(f"Question {i+1}: {question['q']}");
        
        # Simulate different user answers to show functionality
        test_answers = ["Mars", "Oxygen", "Wrong Answer", "Water"];
        user_answer = test_answers[i];
        correct_answer = question["a"];
        
        print(f"Your answer: {user_answer}");
        
        if user_answer.lower() == correct_answer.lower() {
            print("✓ Correct! Well done!");
            tutor.score += 1;
        } else {
            print(f"✗ Incorrect. The correct answer is: {correct_answer}");
            print(f"Explanation: {correct_answer} is the right answer because...");
        }
        
        print(f"Current Score: {tutor.score}/{tutor.total_questions}");
        print("---");
    }
    
    # Final results
    percentage = (tutor.score * 100) / tutor.total_questions;
    print("=== QUIZ COMPLETE ===");
    print(f"Final Score: {tutor.score}/{tutor.total_questions}");
    print(f"Percentage: {percentage}%");
    
    if percentage >= 80 {
        print("Grade: A - Excellent!");
    } elif percentage >= 60 {
        print("Grade: B - Good job!");
    } else {
        print("Grade: C - Keep studying!");
    }
}