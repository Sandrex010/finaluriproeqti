import 'package:flutter/material.dart';
import 'package:untitled4/pages/screens/other_page3.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'მართვის მოწმობის გამოცდის ტესტი ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Quiz(),
    );
  }
}

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var score = 0;

  final questions = [
    "რამდენი წლიდანაა შესაძლებელი მართვის მოწმობის აღება?",
    "შუქნიშნის რომელ ფერზეა ნებადართული მოძრაობის დაწყება?",
    "რამდენი კმ/სთ შეიძლება მოძრაობა ქალაქში",
    "რამდენი კმ/სთ შეიძლება მოძრაობა ავტობანზე ",
    "სად არის დაშვებული მანქნის დაპარკინგება ქალაქში?",
  ];

  final answersA = [
    "14 წლიდან",
    "წითელზე",
    "100 კმ/სთ",
    "120 კმ/სთ",
    "გზაის სავალ ნაწილზე",
  ];

  final answersB = [
    "18 წლიდან",
    "ყვითელზე",
    "50 კმ/სთ",
    "180 კმ/სთ",
    "ჩვენთვის მოსახერხებელ ადგილას",
  ];

  final answersC = [
    "16 წლიდან ",
    "ყველა ზემოთ ჩამოთვლილი",
    "90 კმ/სთ",
    "110 კმ/სთ",
    "სპეციალურ ზონაში",
  ];

  final answersD = [
    "18 წლიდან",
    " მწვანეზე ",
    "60 კმ/სთ",
    "160 კმ/სთ",
    "ტროტუარზე",
  ];

  final correctAnswers = [
    "18 წლიდან",
    " მწვანეზე ",
    "60 კმ/სთ",
    "110 კმ/სთ",
    "სპეციალურ ზონაში",
  ];

  var index = 0;

  var buttonAColor = Colors.blue;
  var buttonBColor = Colors.blue;
  var buttonCColor = Colors.blue;
  var buttonDColor = Colors.blue;

  var nextQuestionVisible = true;

  var alreadyAnswered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Quizzz'),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 48),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    index = 0;
                    buttonAColor = Colors.blue;
                    buttonBColor = Colors.blue;
                    buttonCColor = Colors.blue;
                    buttonDColor = Colors.blue;
                    score = 0;
                    alreadyAnswered = false;
                    nextQuestionVisible = true;
                  });
                },
                child: const Text("თავიდან დაწყება")),
            Text(
              "Score: $score",
              style: TextStyle(
                color: Colors.red,
                fontSize: 22,
              ),
            ),
            Text(questions[index]),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    if (true) {
                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) {
                                return const other_page3();
                              }));
                      if (!alreadyAnswered) {
                        if (correctAnswers[index] == answersA[index]) {
                          setState(() {
                            score++;
                            buttonAColor = Colors.green;
                          });
                        } else {
                          setState(() {
                            buttonAColor = Colors.red;
                          });
                        }
                      }
                      setState(() {
                        alreadyAnswered = true;
                      });
                    };

                    child: Container(
                    decoration: BoxDecoration(
                    color: buttonAColor,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                    width: 150,
                    height: 60,
                    alignment: Alignment.center,
                    child: Text(
                    answersA[index],
                    style: const TextStyle(color: Colors.white)
                    ,
                    )
                    ,
                    );
                  }),
                GestureDetector(
                  onTap: () {
                    if (true) {
                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) {
                                return const other_page3();
                              }));
                      if (!alreadyAnswered) {
                        if (correctAnswers[index] == answersB[index]) {
                          setState(() {
                            score++;
                            buttonBColor = Colors.green;
                          });
                        } else {
                          setState(() {
                            buttonBColor = Colors.red;
                          });
                        }
                      }
                      setState(() {
                        alreadyAnswered = true;
                      });
                    }
                    ;
                    child: Container(
                    decoration: BoxDecoration(
                    color: buttonBColor,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                    width: 150,
                    height: 60,
                    alignment: Alignment.center,
                    child: Text(
                    answersB[index],
                    style: const TextStyle(color: Colors.white)
                    ,
                    )
                    ,
                    );
                  })
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    if (true) {
                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) {
                                return const other_page3();
                              }));
                      if (!alreadyAnswered) {
                        if (correctAnswers[index] == answersC[index]) {
                          setState(() {
                            score++;
                            buttonCColor = Colors.green;
                          });
                        } else {
                          setState(() {
                            buttonCColor = Colors.red;
                          });
                        }
                      }
                      setState(() {
                        alreadyAnswered = true;
                      });
                    };

                    child: Container(
                    decoration: BoxDecoration(
                    color: buttonCColor, borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    width: 150,
                    height: 60,
                    alignment: Alignment.center,
                    child: Text(
                    answersC[index],
                    style: const TextStyle(color: Colors.white)
                    ,
                    )
                    ,
                    );
                  }),
                GestureDetector(
                  onTap: () { if (true) {
    Navigator.of(context).push(
    MaterialPageRoute(
    builder: (context) {
    return const other_page3();}));

    }

                    if (!alreadyAnswered) {
                      if (correctAnswers[index] == answersD[index]) {
                        setState(() {
                          score++;
                          buttonDColor = Colors.green;
                        });
                      } else {
                        setState(() {
                          buttonDColor = Colors.red;
                        });
                      }
                    }
                    setState(() {
                      alreadyAnswered = true;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: buttonDColor,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                    width: 150,
                    height: 60,
                    alignment: Alignment.center,
                    child: Text(
                      answersD[index],
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 36,
            ),
            Visibility(
              visible: nextQuestionVisible,
              child: ElevatedButton(
                  onPressed: () {
                    if (questions.length > index + 1) {
                      setState(() {
                        index++; // 0 -> 1
                      });
                    }

                    if (index == questions.length - 1) {
                      {
                        setState(() {
                          nextQuestionVisible = false;
                        });
                      }
                    }
                    buttonAColor = Colors.blue;
                    buttonBColor = Colors.blue;
                    buttonCColor = Colors.blue;
                    buttonDColor = Colors.blue;
                    alreadyAnswered = false;
                  },
                  child: const Text('Next Question')),
            ),
          ]),
        ));
  }
}
