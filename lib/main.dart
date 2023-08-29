import 'package:flutter/material.dart';
import 'quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

var quizBrain = QuizBrain();

void main() => runApp(const Quizzler());

class Quizzler extends StatelessWidget {
  const Quizzler({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: PageQuizz(),
          )
        ),
      ),
    );
  }
}

class PageQuizz extends StatefulWidget {
  const PageQuizz({super.key});

  @override
  State<PageQuizz> createState() => _PageQuizzState();
}

class _PageQuizzState extends State<PageQuizz> {
  List<Widget> scoreKeeper = [];

  void checkAnswer(bool keyPressed) {
    if (quizBrain.isLastQuestion()) {
      setState(() {
        if (quizBrain.isRightAnswer(keyPressed)) {
          scoreKeeper.add(const Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          scoreKeeper.add(const Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        Alert(
          context: context,
          title: "Your answers:",
          content: Row(
            children: scoreKeeper,
          ),
          style: const AlertStyle(
            isCloseButton: false,
          ),
          buttons: [
            DialogButton(
              child: const Text(
                "Restart quiz",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              onPressed: () {
                setState(() {
                  quizBrain.resetQuiz();
                  scoreKeeper.clear();
                });
                Navigator.pop(context);
              },
            ),
          ],
        ).show();
      });
    } else {
      setState(() {
        if (quizBrain.isRightAnswer(keyPressed)) {
          scoreKeeper.add(const Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          scoreKeeper.add(const Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        quizBrain.nextQuestion();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                )
              )
            ),
        ),
        TextButton(
          onPressed: () {
            checkAnswer(true);
          },
          child: Container(
            color: Colors.green,
            width: double.infinity,
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'True',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            checkAnswer(false);
          },
          child: Container(
            color: Colors.red,
            width: double.infinity,
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'False',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}


