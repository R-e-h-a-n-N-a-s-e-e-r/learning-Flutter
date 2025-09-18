import 'package:flutter/material.dart';
import 'package:flutter_projects/screen_1.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var input = '';
  var result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    Text(
                      input,
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xff6A8AFF),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      result,
                      style: TextStyle(
                        fontSize: 40,
                        color: Color(0xff6A8AFF),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      MyButton(
                        title: 'AC',
                        textColor: Colors.black,
                        color: Color(0xff6A8AFF),
                        onPress: () {
                          result = '';
                          input = '';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '+/-',
                        textColor: Colors.black,
                        color: Color(0xff6A8AFF),
                        onPress: () {
                          toggleSign();
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '%',
                        textColor: Colors.black,
                        color: Color(0xff6A8AFF),
                        onPress: () {
                          input += '%';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        color: Color(0xff6A8AFF),
                        textColor: Colors.black,
                        title: '/',
                        // color: Colors.orange,
                        onPress: () {
                          input += '/';
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        title: '7',
                        onPress: () {
                          input += '7';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '8',
                        onPress: () {
                          input += '8';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '9',
                        onPress: () {
                          input += '9';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        color: Color(0xff6A8AFF),
                        textColor: Colors.black,
                        title: 'x',
                        // color: Colors.orange,
                        onPress: () {
                          input += 'x';
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        title: '4',
                        onPress: () {
                          input += '4';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '5',
                        onPress: () {
                          input += '5';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '6',
                        onPress: () {
                          input += '6';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        color: Color(0xff6A8AFF),
                        textColor: Colors.black,
                        title: '+',
                        // color: Colors.orange,
                        onPress: () {
                          input += '+';
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        title: '3',
                        onPress: () {
                          input += '3';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '2',
                        onPress: () {
                          input += '2';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '1',
                        onPress: () {
                          input += '1';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '-',
                        // color: Colors.orange,
                        color: Color(0xff6A8AFF),
                        textColor: Colors.black,
                        onPress: () {
                          input += '-';
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        title: '0',
                        onPress: () {
                          input += '0';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '.',
                        onPress: () {
                          input += '.';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: 'Del',
                        onPress: () {
                          input = input.substring(0, input.length - 1);
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '=',
                        color: Color(0xff6A8AFF),
                        textColor: Colors.black,
                        onPress: () {
                          equalPress();
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void toggleSign() {
    if (input.isEmpty) return;

    try {
      double value = double.parse(input);
      value = -value;
      input = value.toString();
    } catch (e) {
      if (input.startsWith('-')) {
        input = input.substring(1);
      } else {
        input = '-$input';
      }
    }

    setState(() {});
  }

  void equalPress() {
    try {
      final String userInput = input.replaceAll('x', '*');
      GrammarParser parser = GrammarParser();
      Expression expression = parser.parse(userInput);
      ContextModel contextModel = ContextModel();

      var evaluator = RealEvaluator(contextModel);
      num eval = evaluator.evaluate(expression);

      result = eval % 1 == 0
          ? eval.round().toString()
          : eval.toStringAsFixed(6);
    } catch (e) {
      result = "Error";
    }

    setState(() {});
  }
}
