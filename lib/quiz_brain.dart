import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Dakar est la capital du Sénégal.', true),
    Question('Macky Sall est le president du Senegal.', true),
    Question('Le meilleur butteur de la CAN est Sadio Mané.', false),
    Question('Adonis est un framework nodejs..', true),
    Question('Nestjs est le framework nodejs le plus rapide.', true),
    Question('Laravel est le framework PHP le plus populaire.', true),
    Question('Géant des flandres une race de mouton.', false),
    Question('Iphone x prend deux cartes SIM.', false),
    Question('L\'eau bout à 10 degrès.', false),
    Question(
        'Alioune Sall a remboursser la population leur 400.000 fcfa.', false),
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

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('returning true');
      return true;
    } else {
      return false;
    }
  }

  void resetScore() {
    _questionNumber = 0;
  }
}
