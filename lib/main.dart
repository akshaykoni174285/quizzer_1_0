import 'package:flutter/material.dart';
// import 'question.dart';
import 'brain_quiz.dart';

BrainQuiz brainQuiz = BrainQuiz();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Icon> scorekeeper = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff2E3440),
        appBar: AppBar(
          backgroundColor: const Color(0xff4C566A),
          title: const Text(
            "Quizie",
            style: TextStyle(
              color: Color(0xffD8DEE9),
            ),
          ),
          titleSpacing: 1.5,
          centerTitle: true,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Text(
                      brainQuiz.getQuestion(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.white,
                  thickness: 2,
                  indent: 30,
                  endIndent: 30,
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Card(
                        clipBehavior: Clip.hardEdge,
                        surfaceTintColor: Colors.transparent,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        color: Colors.green,
                        margin: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 5),
                        child: InkWell(
                          splashColor: Colors.green[900],
                          onTap: () {
                            bool correctans = brainQuiz.getAnswer();
                            if (correctans == true) {
                              print("correct ans");
                            } else {
                              print("wrong ans");
                            }
                            // bool correct_ans = answers[counter_num];
                            // if (correct_ans == true){
                            //
                            // }
                            setState(() {
                              brainQuiz.nextQuest();
                            });
                          },
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 25),
                              child: Text(
                                'True',
                                style: TextStyle(
                                    letterSpacing: 1.5,
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Card(
                        surfaceTintColor: Colors.transparent,
                        clipBehavior: Clip.hardEdge,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        elevation: 10,
                        color: Colors.red,
                        margin: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 5),
                        child: InkWell(
                          onTap: () {
                            bool correctans = brainQuiz.getAnswer();
                            if (correctans == false) {
                              print("correct ans");
                            } else {
                              print("wrong ans");
                            }
                            setState(() {
                              brainQuiz.nextQuest();
                            });
                          },
                          splashColor: Colors.red[900],
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 25),
                              child: Text(
                                'False',
                                style: TextStyle(
                                    letterSpacing: 1.5,
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                      //TODO: enter the score keeper
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 0),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.check,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.check,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.check,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.check,
                            color: Colors.green,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
