import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:witcherquiz/questionClass.dart';

bool? colorDefinerA;
bool? colorDefinerB;
bool? colorDefinerC;
bool? colorDefinerD;
bool ignore = true;

class questionsPage extends StatefulWidget {
  const questionsPage({super.key});

  @override
  State<questionsPage> createState() => _questionsPageState();
}

class _questionsPageState extends State<questionsPage> {
  var score = 0;
  int i = 0;
  bool ignore = true;

  final soru = questionClass();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          "images/wp2.jpg",
          fit: BoxFit.fill,
          height: height,
          width: width,
        ),
        Padding(
          padding: EdgeInsets.only(top: 40, left: 20),
          child: GestureDetector(
            onTap: () {
              setState(() {
                print(i);
                colorDefinerA = null;
                colorDefinerB = null;
                colorDefinerC = null;
                colorDefinerD = null;
                ignore = true;
                print(score);
                i++;
              });
            },
            child: Image.asset(
              "images/wsymbol.png",
              width: width / 6,
              height: height / 12,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 30, left: 300),
          child: Container(
            child: Text(
              "$score",
              style: GoogleFonts.teko(
                  fontSize: 80, color: Color.fromARGB(255, 133, 0, 0)),
            ),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 60, bottom: 20),
                child: Container(
                    alignment: Alignment.center,
                    height: height / 4,
                    width: width / 1.1,
                    child: Text(
                      soru.questions.keys.elementAt(i),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    )),
              ),
              //Yanıtlar
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IgnorePointer(
                    ignoring: !ignore,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          ignore = false;
                          if (i != 10) {
                            if (soru.questions.values.toList()[i][0] ==
                                soru.answers[i]) {
                              colorDefinerA = true;
                              score++;
                            } else {
                              colorDefinerA = false;
                              score--;
                            }
                          } else {
                            Navigator.pop(context, score.toString());
                          }
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          alignment: Alignment.center,
                          height: height / 8,
                          width: width / 1.1,
                          decoration: BoxDecoration(
                              color: colorDefinerA == null
                                  ? Color.fromARGB(68, 250, 250, 250)
                                  : (colorDefinerA == true
                                      ? Colors.green
                                      : Colors.red),
                              borderRadius: BorderRadius.circular(25)),
                          child: Text(
                            soru.questions.values.elementAt(i)[0],
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ),
                  AbsorbPointer(
                    absorbing: !ignore,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          ignore = false;

                          if (i != 10) {
                            if (soru.questions.values.toList()[i][1] ==
                                soru.answers[i]) {
                              colorDefinerB = true;
                              score++;
                            } else {
                              colorDefinerB = false;
                              score--;
                            }
                          } else {
                            Navigator.pop(context, score.toString());
                          }
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          alignment: Alignment.center,
                          height: height / 8,
                          width: width / 1.1,
                          decoration: BoxDecoration(
                              color: colorDefinerB == null
                                  ? Color.fromARGB(68, 250, 250, 250)
                                  : (colorDefinerB == true
                                      ? Colors.green
                                      : Colors.red),
                              borderRadius: BorderRadius.circular(25)),
                          child: Text(
                            soru.questions.values.elementAt(i)[1],
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ),
                  IgnorePointer(
                    ignoring: !ignore,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          ignore = false;

                          if (i != 10) {
                            if (soru.questions.values.toList()[i][2] ==
                                soru.answers[i]) {
                              colorDefinerC = true;
                              score++;
                            } else {
                              colorDefinerC = false;
                              score--;
                            }
                          } else {
                            Navigator.pop(context, score.toString());
                          }
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          alignment: Alignment.center,
                          height: height / 8,
                          width: width / 1.1,
                          decoration: BoxDecoration(
                              color: colorDefinerC == null
                                  ? Color.fromARGB(68, 250, 250, 250)
                                  : (colorDefinerC == true
                                      ? Colors.green
                                      : Colors.red),
                              borderRadius: BorderRadius.circular(25)),
                          child: Text(
                            soru.questions.values.elementAt(i)[2],
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ),
                  IgnorePointer(
                    ignoring: !ignore,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          ignore = false;

                          if (i != 10) {
                            if (soru.questions.values.toList()[i][3] ==
                                soru.answers[i]) {
                              colorDefinerD = true;
                              score++;
                            } else {
                              colorDefinerD = false;
                              score--;
                            }
                          } else {
                            Navigator.pop(context, score.toString());
                          }
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          alignment: Alignment.center,
                          height: height / 8,
                          width: width / 1.1,
                          decoration: BoxDecoration(
                              color: colorDefinerD == null
                                  ? Color.fromARGB(68, 250, 250, 250)
                                  : (colorDefinerD == true
                                      ? Colors.green
                                      : Colors.red),
                              borderRadius: BorderRadius.circular(25)),
                          child: Text(
                            soru.questions.values.elementAt(i)[3],
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    ));
  }
}

