import 'package:quizz_like/Data/question.dart';

List<Question> Getquestionlist() {
  var firstQuestion = Question();
  firstQuestion.QuestionTitle = 'مشهور ترین شعبده‌باز جهان کیست؟';
  firstQuestion.ImagenameNumber = '1';
  firstQuestion.CorrectAnswer = 2;

  firstQuestion.AnswerList = [
    'امیراحمدادیبی',
    'دیوید کاپرفیلد',
    'هری هودینی',
    'دیوید بلین'
  ];

  var secondQuestion = Question();
  secondQuestion.QuestionTitle = 'چه کشوری ایستگاه فضایی میر را بنا کرد؟';
  secondQuestion.ImagenameNumber = '2';
  secondQuestion.CorrectAnswer = 0;

  secondQuestion.AnswerList = [
    '(شوروی سابق)روسیه',
    'آمریکا',
    'چین',
    'هند',
  ];

  return [firstQuestion, secondQuestion];
}
