import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(q: 'Dakar est la capital du Sénégal.', a: true),
    Question(q: 'Macky Sall est le president du Senegal.', a: true),
    Question(q: 'Le meilleur butteur de la CAN est Sadio Mané.', a: false),
    Question(q: 'Adonis est un framework nodejs..', a: true),
    Question(q: 'Nestjs est le framework nodejs le plus rapide.', a: true),
    Question(q: 'Laravel est le framework PHP le plus populaire.', a: true),
    Question(q: 'Géant des flandres une race de mouton.', a: false),
    Question(q: 'Iphone x prend deux cartes SIM.', a: false),
    Question(q: 'L\'eau bout à 10 degrès.', a: false),
    Question(
        q: 'Alioune Sall a remboursser la population leur 400.000 fcfa.',
        a: false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
}
