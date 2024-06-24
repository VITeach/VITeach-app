import 'package:flutter/material.dart';
import 'package:viteach_learning_app/quiz/view/result_screen.dart';


class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List quizListData = [
    {
      "id": 1,
      "answer": "blue",
      "answer_discription": "",
      "is_answered": 0,
      "is_answer_status_right_wrong_omitted": 0,
      "title": "What is the color of ocean?",
      "options": [
        {
          "option": "a",
          "value": "red",
          "color": "0xFFFFFFFF",
        },
        {
          "option": "b",
          "value": "green",
          "color": "0xFFFFFFFF",
        },
        {
          "option": "c",
          "value": "black",
          "color": "0xFFFFFFFF",
        },
        {
          "option": "d",
          "value": "blue",
          "color": "0xFFFFFFFF",
        },
      ],
    },
    {
      "id": 2,
      "answer": "Jupiter",
      "answer_discription": "",
      "is_answered": 0,
      "is_answer_status_right_wrong_omitted": 0,
      "title": "Which is the largest planet in the solar system?",
      "options": [
        {
          "option": "a",
          "value": "Saturn",
          "color": "0xFFFFFFFF",
        },
        {
          "option": "b",
          "value": "Jupiter",
          "color": "0xFFFFFFFF",
        },
        {
          "option": "c",
          "value": "Mars",
          "color": "0xFFFFFFFF",
        },
        {
          "option": "d",
          "value": "Earth",
          "color": "0xFFFFFFFF",
        },
      ],
    },
    {
      "id": 3,
      "answer": "Tom",
      "answer_discription": "",
      "is_answered": 0,
      "is_answer_status_right_wrong_omitted": 0,
      "title": "Pick out the Proper Noun.",
      "options": [
        {
          "option": "a",
          "value": "Tom",
          "color": "0xFFFFFFFF",
        },
        {
          "option": "b",
          "value": "car",
          "color": "0xFFFFFFFF",
        },
        {
          "option": "c",
          "value": "vase",
          "color": "0xFFFFFFFF",
        },
        {
          "option": "d",
          "value": "happiness",
          "color": "0xFFFFFFFF",
        },
      ],
    },
    {
      "id": 4,
      "answer": "3",
      "answer_discription": "",
      "is_answered": 0,
      "is_answer_status_right_wrong_omitted": 0,
      "title": "what is 2+1?",
      "options": [
        {
          "option": "a",
          "value": "3",
          "color": "0xFFFFFFFF",
        },
        {
          "option": "b",
          "value": "2",
          "color": "0xFFFFFFFF",
        },
        {
          "option": "c",
          "value": "1",
          "color": "0xFFFFFFFF",
        },
        {
          "option": "d",
          "value": "6",
          "color": "0xFFFFFFFF",
        },
      ],
    },
    {
      "id": 5,
      "answer": "365",
      "answer_discription": "",
      "is_answered": 0,
      "is_answer_status_right_wrong_omitted": 0,
      "title": "1 yr has  __________ \rdays.",
      "options": [
        {
          "option": "a",
          "value": "270",
          "color": "0xFFFFFFFF",
        },
        {
          "option": "b",
          "value": "420",
          "color": "0xFFFFFFFF",
        },
        {
          "option": "c",
          "value": "365",
          "color": "0xFFFFFFFF",
        },
        {
          "option": "d",
          "value": "4450",
          "color": "0xFFFFFFFF",
        },
      ],
    },
    {
      "id": 6,
      "answer": "Apple",
      "answer_discription": "",
      "is_answered": 0,
      "is_answer_status_right_wrong_omitted": 0,
      "title": "Steve Jobs is the owner of?",
      "options": [
        {
          "option": "a",
          "value": "Google",
          "color": "0xFFFFFFFF",
        },
        {
          "option": "b",
          "value": "Flipkart",
          "color": "0xFFFFFFFF",
        },
        {
          "option": "c",
          "value": "Apple",
          "color": "0xFFFFFFFF",
        },
        {
          "option": "d",
          "value": "Samsung",
          "color": "0xFFFFFFFF",
        },
      ],
    },
  ];

  final _pageController = PageController(initialPage: 0);
  int questionINdex = 0;

  int userPercentage = 0;
  int wrongQ = 0;
  int ommitedQuestion = 0;
  int totalRight = 0;

  quizResult(context) {
    userPercentage = 0;
    wrongQ = 0;
    ommitedQuestion = 0;
    totalRight = 0;

    for (int i = 0; i < quizListData.length; i++) {
      if (quizListData[i]['is_answer_status_right_wrong_omitted'] == 0) {
        ommitedQuestion++;
      }
      if (quizListData[i]['is_answer_status_right_wrong_omitted'] == 1) {
        totalRight++;
      }
      if (quizListData[i]['is_answer_status_right_wrong_omitted'] == 2) {
        wrongQ++;
      }
    }

    userPercentage = ((totalRight / quizListData.length) * 100).round();
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => ResultScreen(
            userPercentage: userPercentage,
            totalRight: totalRight,
            wrongQ: wrongQ,
            ommitedQuestion: ommitedQuestion,
          ),
        ),
        (Route<dynamic> route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F4F4),
      appBar: AppBar(
        title: const Text("Quiz"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Question :${questionINdex + 1}/${quizListData.length}",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: quizListData.length,
                onPageChanged: (page) {
                  print("Current page $page");
                  setState(
                    () {
                      questionINdex = page;
                    },
                  );
                },
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text(
                          "${index + 1} of ${quizListData.length}",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xEDFAA233),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              quizListData[index]['title'],
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      quizListData[index]
                                  ['is_answer_status_right_wrong_omitted'] ==
                              2
                          ? Text(
                              "Sorry : Right answer is -> ${quizListData[index]['answer']} ",
                              style: const TextStyle(
                                color: Colors.red,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            )
                          : const SizedBox(),
                      const SizedBox(
                        height: 20,
                      ),
                      ...quizListData[index]['options']
                          .map(
                            (data) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: SizedBox(
                                width: double.infinity,
                                child: Card(
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                      backgroundColor: Color(
                                        int.parse(
                                          data['color'],
                                        ),
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                    onPressed: () {
                                      if (quizListData[index]['is_answered'] ==
                                          0) {
                                        setState(() {
                                          if (data['value'] ==
                                              quizListData[index]['answer']) {
                                            data['color'] = "0xFF31CD63";
                                            quizListData[index][
                                                'is_answer_status_right_wrong_omitted'] = 1;
                                          } else {
                                            data['color'] = "0xFFFF0000";
                                            quizListData[index][
                                                'is_answer_status_right_wrong_omitted'] = 2;
                                          }
                                          quizListData[index]['is_answered'] =
                                              1;
                                        });
                                      } else {}
                                    },
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 0),
                                          child: Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              color: Color(
                                                int.parse(
                                                  data['color'],
                                                ),
                                              ),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Center(
                                              child: Text(
                                                data['option'].toUpperCase(),
                                                style: const TextStyle(
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          child: Text(
                                            data['value'],
                                            style: const TextStyle(
                                              color: Colors.black,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          if (questionINdex == quizListData.length - 1) {
            print("Submit ");
            quizResult(context);
          } else {
            print("ELSE PART");
            _pageController.nextPage(
              duration: const Duration(milliseconds: 5),
              curve: Curves.easeIn,
            );
          }
        },
        label:
            Text(questionINdex == quizListData.length - 1 ? "Submit" : "Next"),
      ),
    );
  }
}

