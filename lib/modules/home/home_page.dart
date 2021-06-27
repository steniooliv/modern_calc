import 'package:flutter/material.dart';
import 'package:modern_calc/modules/home/home_page_controller.dart';
import 'package:modern_calc/shared/theme/app_colors.dart';
import 'package:modern_calc/shared/theme/app_text_styles.dart';

import 'package:modern_calc/shared/widgets/button/button_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomePageController();

  var op = '';
  var operation = "";
  var result = 0.0;
  var currentOp;

  @override
  Widget build(BuildContext context) {
    final size = MediaQueryData.fromWindow(WidgetsBinding.instance!.window);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffc9c9c9),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    width: double.maxFinite,
                    height: size.size.height * 0.18,
                    alignment: Alignment.bottomRight,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF525252),
                          spreadRadius: -1,
                          blurRadius: 1,
                          offset: Offset(0, 2),
                        ),
                        BoxShadow(
                          color: Color(0xFFB5B5B5),
                          blurRadius: 1,
                          offset: -Offset(0, 1),
                        ),
                      ],
                      color: AppColors.displayBackground,
                      border: Border.all(width: 2, color: Colors.black),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        operation,
                        style: TextStyles.titleDisplay,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: double.maxFinite,
                height: size.size.height * 0.6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    gradient: RadialGradient(
                      radius: 2.0,
                      center: Alignment(0.0, -0.8),
                      colors: [Color(0xfff1f1ed), Color(0xffd6dde2)],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff9e9e9e),
                        blurRadius: 6,
                        spreadRadius: 0,
                        offset: -Offset(0, -5),
                      ),
                      BoxShadow(
                        color: Color(0x44000000),
                        blurRadius: 2,
                        spreadRadius: -2,
                        offset: Offset(0, 3),
                      ),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              op = 'AC';
                              if ('AC' == '=') {
                                operation = controller
                                    .separatesFunctionIntoSmallerFunctions(
                                        operation, '*', '/');
                                operation = controller
                                    .separatesFunctionIntoSmallerFunctions(
                                        operation, '-', '+');
                              } else {
                                operation += 'AC';
                              }

                              result = 0.0;
                              operation = "";
                              setState(() {});
                            },
                            child: ButtonWidget(
                              buttonText: 'AC',
                              widthSize: size.size.width * 0.32,
                              styleText: "orange",
                            ),
                          ),
                          SizedBox(
                            width: size.size.width * 0.04,
                          ),
                          GestureDetector(
                            onTap: () {
                              op = '/';
                              if ('/' == '=') {
                                operation = controller
                                    .separatesFunctionIntoSmallerFunctions(
                                        operation, '*', '/');
                                operation = controller
                                    .separatesFunctionIntoSmallerFunctions(
                                        operation, '-', '+');
                              } else {
                                operation += '/';
                              }

                              currentOp = op;
                              setState(() {});
                            },
                            child: ButtonWidget(
                              buttonText: '÷',
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              op = '*';
                              if ('*' == '=') {
                                operation = controller
                                    .separatesFunctionIntoSmallerFunctions(
                                        operation, '*', '/');
                                operation = controller
                                    .separatesFunctionIntoSmallerFunctions(
                                        operation, '-', '+');
                              } else {
                                operation += '*';
                              }

                              currentOp = op;
                              setState(() {});
                            },
                            child: ButtonWidget(
                              buttonText: 'x',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              op = '7';
                              if ('7' == '=') {
                                operation = controller
                                    .separatesFunctionIntoSmallerFunctions(
                                        operation, '*', '/');
                                operation = controller
                                    .separatesFunctionIntoSmallerFunctions(
                                        operation, '-', '+');
                              } else {
                                operation += '7';
                              }

                              currentOp = op;
                              setState(() {});
                            },
                            child: ButtonWidget(
                              buttonText: '7',
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              op = '8';
                              if ('8' == '=') {
                                operation = controller
                                    .separatesFunctionIntoSmallerFunctions(
                                        operation, '*', '/');
                                operation = controller
                                    .separatesFunctionIntoSmallerFunctions(
                                        operation, '-', '+');
                              } else {
                                operation += '8';
                              }

                              currentOp = op;
                              setState(() {});
                            },
                            child: ButtonWidget(
                              buttonText: '8',
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              op = '9';
                              if ('9' == '=') {
                                operation = controller
                                    .separatesFunctionIntoSmallerFunctions(
                                        operation, '*', '/');
                                operation = controller
                                    .separatesFunctionIntoSmallerFunctions(
                                        operation, '-', '+');
                              } else {
                                operation += '9';
                              }

                              currentOp = op;
                              setState(() {});
                            },
                            child: ButtonWidget(
                              buttonText: '9',
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              op = '-';
                              if ('-' == '=') {
                                operation = controller
                                    .separatesFunctionIntoSmallerFunctions(
                                        operation, '*', '/');
                                operation = controller
                                    .separatesFunctionIntoSmallerFunctions(
                                        operation, '-', '+');
                              } else {
                                operation += '-';
                              }

                              currentOp = op;
                              setState(() {});
                            },
                            child: ButtonWidget(
                              buttonText: '-',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              op = '4';
                              if ('4' == '=') {
                                operation = controller
                                    .separatesFunctionIntoSmallerFunctions(
                                        operation, '*', '/');
                                operation = controller
                                    .separatesFunctionIntoSmallerFunctions(
                                        operation, '-', '+');
                              } else {
                                operation += '4';
                              }

                              currentOp = op;
                              setState(() {});
                            },
                            child: ButtonWidget(
                              buttonText: '4',
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              op = '5';
                              if ('5' == '=') {
                                operation = controller
                                    .separatesFunctionIntoSmallerFunctions(
                                        operation, '*', '/');
                                operation = controller
                                    .separatesFunctionIntoSmallerFunctions(
                                        operation, '-', '+');
                              } else {
                                operation += '5';
                              }

                              currentOp = op;
                              setState(() {});
                            },
                            child: ButtonWidget(
                              buttonText: '5',
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              op = '6';
                              if ('6' == '=') {
                                operation = controller
                                    .separatesFunctionIntoSmallerFunctions(
                                        operation, '*', '/');
                                operation = controller
                                    .separatesFunctionIntoSmallerFunctions(
                                        operation, '-', '+');
                              } else {
                                operation += '6';
                              }

                              currentOp = op;
                              setState(() {});
                            },
                            child: ButtonWidget(
                              buttonText: '6',
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              op = '+';
                              if ('+' == '=') {
                                operation = controller
                                    .separatesFunctionIntoSmallerFunctions(
                                        operation, '*', '/');
                                operation = controller
                                    .separatesFunctionIntoSmallerFunctions(
                                        operation, '-', '+');
                              } else {
                                operation += '+';
                              }

                              currentOp = op;
                              setState(() {});
                            },
                            child: ButtonWidget(
                              buttonText: '+',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              op = '1';
                              if ('1' == '=') {
                                operation = controller
                                    .separatesFunctionIntoSmallerFunctions(
                                        operation, '*', '/');
                                operation = controller
                                    .separatesFunctionIntoSmallerFunctions(
                                        operation, '-', '+');
                              } else {
                                operation += '1';
                              }

                              currentOp = op;
                              setState(() {});
                            },
                            child: ButtonWidget(
                              buttonText: '1',
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              op = '2';
                              if ('2' == '=') {
                                operation = controller
                                    .separatesFunctionIntoSmallerFunctions(
                                        operation, '*', '/');
                                operation = controller
                                    .separatesFunctionIntoSmallerFunctions(
                                        operation, '-', '+');
                              } else {
                                operation += '2';
                              }

                              currentOp = op;
                              setState(() {});
                            },
                            child: ButtonWidget(
                              buttonText: '2',
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              op = '3';
                              if ('3' == '=') {
                                operation = controller
                                    .separatesFunctionIntoSmallerFunctions(
                                        operation, '*', '/');
                                operation = controller
                                    .separatesFunctionIntoSmallerFunctions(
                                        operation, '-', '+');
                              } else {
                                operation += '3';
                              }

                              currentOp = op;
                              setState(() {});
                            },
                            child: ButtonWidget(
                              buttonText: '3',
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              op = '.';
                              if ('.' == '=') {
                                operation = controller
                                    .separatesFunctionIntoSmallerFunctions(
                                        operation, '*', '/');
                                operation = controller
                                    .separatesFunctionIntoSmallerFunctions(
                                        operation, '-', '+');
                              } else {
                                operation += '.';
                              }

                              currentOp = op;
                              setState(() {});
                            },
                            child: ButtonWidget(
                              buttonText: '.',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              op = '0';
                              if ('0' == '=') {
                                operation = controller
                                    .separatesFunctionIntoSmallerFunctions(
                                        operation, '*', '/');
                                operation = controller
                                    .separatesFunctionIntoSmallerFunctions(
                                        operation, '-', '+');
                              } else {
                                operation += '0';
                              }

                              currentOp = op;
                              setState(() {});
                            },
                            child: ButtonWidget(
                              buttonText: '0',
                              widthSize: size.size.width * 0.32,
                            ),
                          ),
                          SizedBox(
                            width: size.size.width * 0.04,
                          ),
                          GestureDetector(
                            onTap: () {
                              op = '00';
                              if ('00' == '=') {
                                operation = controller
                                    .separatesFunctionIntoSmallerFunctions(
                                        operation, '*', '/');
                                operation = controller
                                    .separatesFunctionIntoSmallerFunctions(
                                        operation, '-', '+');
                              } else {
                                operation += '00';
                              }

                              currentOp = op;
                              setState(() {});
                            },
                            child: ButtonWidget(
                              buttonText: '00',
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              op = '=';
                              if ('=' == '=') {
                                operation = controller
                                    .separatesFunctionIntoSmallerFunctions(
                                        operation, '*', '/');
                                operation = controller
                                    .separatesFunctionIntoSmallerFunctions(
                                        operation, '-', '+');
                              } else {
                                operation += '=';
                              }

                              setState(() {});
                            },
                            child: ButtonWidget(
                              buttonText: '=',
                              styleText: "orange",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
