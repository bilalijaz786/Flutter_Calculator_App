import 'package:calculator_app/constaint.dart';
import 'package:calculator_app/mybutton.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  var userInput = "";
  var result = "";
  equalPress() {
    Parser p = Parser();
    final UserInput = userInput.replaceAll("x", "*");
    Expression expression = p.parse(UserInput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, ContextModel());
    result = eval.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: backgroundColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          userInput.toString(),
                          style: TextStyle(color: whiteColor, fontSize: 30),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          result.toString(),
                          style: TextStyle(color: whiteColor, fontSize: 50),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                      color: buttonbgcolor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MyButton(
                            title: "AC",
                            color: GreenColor,
                            onPress: () {
                              userInput = "";
                              result = "";
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: "+/-",
                            color: GreenColor,
                            onPress: () {
                              userInput = userInput + "+/-";
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: "/",
                            color: GreenColor,
                            onPress: () {
                              userInput = userInput + "/";
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: "⌫",
                            color: RedColor,
                            onPress: () {
                              userInput =
                                  userInput.substring(0, userInput.length - 1);

                              setState(() {});
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MyButton(
                            title: "7",
                            color: whiteColor,
                            onPress: () {
                              userInput = userInput + "7";
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: "8",
                            color: whiteColor,
                            onPress: () {
                              userInput = userInput + "8";
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: "9",
                            color: whiteColor,
                            onPress: () {
                              userInput = userInput + "9";
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: "x",
                            color: RedColor,
                            onPress: () {
                              userInput = userInput + "x";
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MyButton(
                            title: "4",
                            color: whiteColor,
                            onPress: () {
                              userInput = userInput + "4";
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: "5",
                            color: whiteColor,
                            onPress: () {
                              userInput = userInput + "5";
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: "6",
                            color: whiteColor,
                            onPress: () {
                              userInput = userInput + "6";
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: "-",
                            color: RedColor,
                            onPress: () {
                              userInput = userInput + "-";
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MyButton(
                            title: "1",
                            color: whiteColor,
                            onPress: () {
                              userInput = userInput + "1";
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: "2",
                            color: whiteColor,
                            onPress: () {
                              userInput = userInput + "2";
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: "3",
                            color: whiteColor,
                            onPress: () {
                              userInput = userInput + "3";
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: "+",
                            color: RedColor,
                            onPress: () {
                              userInput = userInput + "+";
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MyButton(
                            title: ".",
                            color: whiteColor,
                            onPress: () {
                              userInput = userInput + ".";
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: "0",
                            color: whiteColor,
                            onPress: () {
                              userInput = userInput + "0";
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: "%",
                            color: whiteColor,
                            onPress: () {
                              userInput = userInput + "%";
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: "=",
                            color: RedColor,
                            onPress: () {
                              equalPress();
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
