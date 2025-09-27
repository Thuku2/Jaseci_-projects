glob questions = [
    {"q": "What planet is known as the Red Planet?", "a": "Mars"},
    {"q": "What gas do humans need to survive?", "a": "Oxygen"},
    {"q": "What force pulls objects toward Earth?", "a": "Gravity"},
    {"q": "What is H2O commonly known as?", "a": "Water"},
];

walker QuizTutor {
    has score: int = 0;
}

node session {
    has chosen: dict;
}

with entry: __main__ {
    root spawn QuizTutor();
}