import 'package:flutter/material.dart';
import 'package:quizz/QuestionBank.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(padding: EdgeInsets.all(10.0), child: Quizzler()),
      ),
    ),
  ));
}

class Quizzler extends StatefulWidget {
  const Quizzler({Key? key}) : super(key: key);

  @override
  _QuizzlerState createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {
  QuestionBank q = QuestionBank();
  List<Icon> score = [];

  void scoreKeeper(bool userInput) {
    if (q.getAnswer() == userInput) {
      score.add(Icon(Icons.check, color: Colors.green));
    } else {
      score.add(Icon(Icons.close, color: Colors.red));
    }
  }

  void check() {
    if (q.getQuestionNumber() == 12) {
      print('reached end');
      Alert(
              context: context,
              title: 'Finished',
              desc: 'You\'ve reached the end of the Quiz')
          .show();
      setState(() {
        q.reset();
        score = [];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Center(
            child: Text(
              q.getQuestion(),
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              height: 45.0,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    scoreKeeper(true);
                    check();
                    q.getNextQuestion();
                  });
                },
                child: Text('True'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  scoreKeeper(false);
                  check();
                  q.getNextQuestion();
                });
              },
              child: Text('False'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
            ),
          ),
        ),
        Row(
          children: score,
        )
      ],
    );
  }
}
