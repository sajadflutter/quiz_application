import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key, this.resultAnwer = 0});
  var resultAnwer = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'نتیجه آزمون',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[900],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset('images/3.png'),
            Text(
              'پاسخ های صحیح شما',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            Text(
              '$resultAnwer',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 80),
            ),
          ],
        ),
      ),
    );
  }
}
