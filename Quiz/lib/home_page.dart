import 'package:flutter/material.dart';
import 'package:quizz_like/quiz_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[700],
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'کویزز کویین',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[900],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Image(
              image: AssetImage('images/welcome.png'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blueGrey[900],
                minimumSize: Size(200, 40),
                elevation: 0,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => QuizzPage(),
                  ),
                );
              },
              child: Text(
                'شروع بازی',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
