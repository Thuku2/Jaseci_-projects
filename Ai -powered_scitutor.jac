with entry:__main__ {
    score = 0;
    total_questions = 4;
    
    print("=== Science Quiz Tutor ===");
    print(f"Total Questions: {total_questions}");
    print("");
    
    # Question 1
    print("Question 1: What planet is known as the Red Planet?");
    user_answer = "Mars";
    print(f"Your answer: {user_answer}");
    if user_answer.lower() == "mars" {
        print("Correct! Well done!");
        score += 1;
    } else {
        print("Incorrect. The correct answer is: Mars");
    }
    print(f"Score: {score}/1");
    print("---");
    
    # Question 2
    print("Question 2: What gas do humans need to survive?");
    user_answer = "Oxygen";
    print(f"Your answer: {user_answer}");
    if user_answer.lower() == "oxygen" {
        print("Correct! Well done!");
        score += 1;
    } else {
        print("Incorrect. The correct answer is: Oxygen");
    }
    print(f"Score: {score}/2");
    print("---");
    
    # Question 3
    print("Question 3: What force pulls objects toward Earth?");
    user_answer = "Wrong Answer";
    print(f"Your answer: {user_answer}");
    if user_answer.lower() == "gravity" {
        print("Correct! Well done!");
        score += 1;
    } else {
        print("Incorrect. The correct answer is: Gravity");
        print("Explanation: Gravity is the force that attracts objects toward Earth.");
    }
    print(f"Score: {score}/3");
    print("---");
    
    # Question 4
    print("Question 4: What is H2O commonly known as?");
    user_answer = "Water";
    print(f"Your answer: {user_answer}");
    if user_answer.lower() == "water" {
        print("Correct! Well done!");
        score += 1;
    } else {
        print("Incorrect. The correct answer is: Water");
    }
    print(f"Score: {score}/4");
    print("---");
    
    # Final results
    percentage = (score * 100) / total_questions;
    print("=== QUIZ COMPLETE ===");
    print(f"Final Score: {score}/{total_questions}");
    print(f"Percentage: {percentage}%");
    
    if percentage >= 80 {
        print("Grade: A - Excellent!");
    } elif percentage >= 60 {
        print("Grade: B - Good job!");
    } else {
        print("Grade: C - Keep studying!");
    }
}