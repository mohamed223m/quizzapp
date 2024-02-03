import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:quizapp/flip_card.dart';
import 'package:quizapp/questions.dart';

void main() {
  runApp(const quizz());
}

class quizz extends StatefulWidget {
  const quizz({super.key});

  @override
  State<quizz> createState() => _quizzState();
}

class _quizzState extends State<quizz> {
  List<flashcard> flashcards = [
    flashcard(qq: "What is 1+1?", answer: "2"),
    flashcard(qq: "What is 2+2?", answer: "4"),
    flashcard(qq: "What is 3+3?", answer: "6"),
  ];
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              height: 250,
              child: FlipCard(
                front: flipcard(text: flashcards[counter].qq),
                back: flipcard(text: flashcards[counter].answer),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_sharp),
                  onPressed: () {
                    setState(() {
                      counter == 0
                          ? counter = flashcards.length - 1
                          : counter--;
                    });
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_forward_sharp),
                  onPressed: () {
                    setState(() {
                      counter == flashcards.length - 1
                          ? counter = 0
                          : counter++;
                      ;
                    });
                  },
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
