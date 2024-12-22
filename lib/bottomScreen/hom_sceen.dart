import 'package:flutter/material.dart';
import 'package:praticetest/global/questions.dart';
import 'package:praticetest/utilits/colors.dart';

class QuizSceeen extends StatefulWidget {
  const QuizSceeen({super.key});
  @override
  QuizAppState createState() => QuizAppState();
}

class QuizAppState extends State<QuizSceeen> {
  int currentQuestionIndex = 0;
  int? selectedOption;
  bool isAnswerChecked = false;

  void checkAnswer(String selected) {
    // setState(() {
    //   selectedOption = selected;
    //   isAnswerChecked = true;
    // });
  }

  void nextQuestion() {
    setState(() {
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
        selectedOption = null; // Reset selected option
        // Reset answer check
      } else {
        // Handle quiz completion
        // You can reset the quiz or show a completion message
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    final answer = currentQuestion.answer;
    print(answer);
    print('${currentQuestion.options}');
    print('${questions.length}');
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: background,
        title: const Text(
          "Pratice Test",
          style: TextStyle(fontFamily: 'Asap', fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Text(
              currentQuestion.question,
              style: TextStyle(
                  fontSize: 25, color: black, fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: currentQuestion.options.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    selectedOption = answer;
                    print('selectedOption is $selectedOption');
                    setState(() {});
                    print('select called');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color:
                          selectedOption == index ? Colors.green : Colors.white,
                    ),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      '${currentQuestion.options[index]}',
                      style: TextStyle(color: black),
                    ),
                    margin: EdgeInsets.all(10),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              nextQuestion();
            },
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.white,
                child: const Text(
                  'Next Question',
                  style: TextStyle(color: black),
                ),
                margin: EdgeInsets.all(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
