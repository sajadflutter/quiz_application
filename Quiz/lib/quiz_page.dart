import 'package:flutter/material.dart';
import 'package:quizz_like/Constant/constants.dart';
import 'package:quizz_like/Data/question.dart';
import 'package:quizz_like/Screens/result_screen.dart';

class QuizzPage extends StatefulWidget {
  const QuizzPage({super.key});

  @override
  State<QuizzPage> createState() => _QuizzPageState();
}

Question? SelectedQuestion;
var ShownQuestionindex = 0;

bool isFinalAnswerSubmited = false;

class _QuizzPageState extends State<QuizzPage> {
  var correctanswer = 0;
  @override
  Widget build(BuildContext context) {
    SelectedQuestion = Getquestionlist()[ShownQuestionindex];
    String QuestionImageIndex =
        Getquestionlist()[ShownQuestionindex].ImagenameNumber!;

    return Scaffold(
      backgroundColor: Colors.blueGrey[700],
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'سوال${ShownQuestionindex + 1}از${Getquestionlist().length}',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[900],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('images/$QuestionImageIndex.png'),
              height: 300,
              width: double.infinity,
            ),
            Text(
              SelectedQuestion!.QuestionTitle!,
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            ...List.generate(
              4,
              ((index) => GetOptionsItem(index)),
            ),
            if (isFinalAnswerSubmited == true)
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey[900],
                  minimumSize: Size(200, 40),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => ResultScreen(
                        resultAnwer: correctanswer,
                      ),
                    ),
                  );
                },
                child: Text(
                  'مشاهده نتیجه کوییز',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget GetOptionsItem(int index) {
    return ListTile(
      title: Text(
        SelectedQuestion!.AnswerList![index],
        textAlign: TextAlign.end,
      ),
      onTap: () {
        if (SelectedQuestion!.CorrectAnswer == index) {
          correctanswer++;
        }
        if (ShownQuestionindex == Getquestionlist().length - 1) {
          isFinalAnswerSubmited = true;
        }
        setState(() {
          if (ShownQuestionindex < Getquestionlist().length - 1) {
            ShownQuestionindex++;
          }
        });
      },
    );
  }
}
