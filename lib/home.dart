import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
// import 'package:flutter/cupertino.dart';
import 'dart:core';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  num num1 = 0;
  num num2 = 0;
  String displayNum1 = '0';
  String displayOperator = '';
  String displayNum2 = '0';
  String result = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(2.0, 0.0, 2.0, 80.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(2.0, 0.0, 20.0, 2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                      child: AutoSizeText(
                    result,
                    textAlign: TextAlign.end,
                    maxLines: 1,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 100,
                    ),
                  )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 50.0,
                    width: 50.0,
                    child: FloatingActionButton(
                      child: const Text(
                        'AC',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          num1 = 0;
                          num2 = 0;
                          displayNum1 = '0';
                          displayNum2 = '0';
                          displayOperator = '';
                          result = '0';
                        });
                        if (displayNum1 == '0' &&
                            displayOperator == '' &&
                            displayNum2 == '0') {
                          setState(() {
                            result = displayNum1;
                          });
                        } else if (displayNum1 != '0' &&
                            displayOperator == '' &&
                            displayNum2 == '0') {
                          setState(() {
                            result = displayNum1;
                          });
                        } else if (displayNum1 != '0' &&
                            displayOperator != '' &&
                            displayNum2 == '') {
                          setState(() {
                            result = displayNum1 + displayOperator;
                          });
                        } else if (displayNum1 != '0' &&
                            displayOperator != '' &&
                            displayNum2 != '0') {
                          setState(() {
                            result =
                                displayNum1 + displayOperator + displayNum2;
                          });
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                    width: 50.0,
                    child: FloatingActionButton(
                      onPressed: () {
                        if (displayNum1 == '0' &&
                            displayOperator == '' &&
                            displayNum2 == '0') {
                          setState(() {
                            result = displayNum1;
                          });
                        } else if (displayNum1 != '0' &&
                            displayOperator == '' &&
                            displayNum2 == '0') {
                          setState(() {
                            num1 = num1 * (-1);
                            displayNum1 = num1.toString();
                            result = displayNum1;
                          });
                        } else if (displayNum1 != '0' &&
                            displayOperator != '' &&
                            displayNum2 == '0') {
                          setState(() {
                            result = displayNum1 + displayOperator;
                          });
                        } else if (displayNum1 != '0' &&
                            displayOperator != '' &&
                            displayNum2 != '0') {
                          setState(() {
                            num2 = num2 * (-1);
                            displayNum2 = '($num2)';
                            result =
                                displayNum1 + displayOperator + displayNum2;
                          });
                        }
                      },
                      child: const Text('+/-',
                          style: TextStyle(
                            fontSize: 20.0,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                    width: 50.0,
                    child: FloatingActionButton(
                        onPressed: () {
                          if (displayNum1 != '0') {
                            setState(() {
                              num1 = num1 / 100;
                              displayNum1 = num1.toString();
                              result = displayNum1;
                            });
                          }
                        },
                        child: const Text(
                          '%',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 50.0,
                    width: 50.0,
                    child: FloatingActionButton(
                      backgroundColor: const Color.fromARGB(255, 207, 154, 74),
                      onPressed: () {
                        if (displayOperator == '' &&
                            displayNum1 != '0' &&
                            displayNum2 == '0') {
                          setState(() {
                            displayOperator = '/';
                            result = displayNum1 + displayOperator;
                          });
                        } else if (displayNum1 == '0' &&
                            displayOperator == '' &&
                            displayNum2 == '0') {
                          setState(() {
                            displayOperator = '';
                            result = displayNum1 + displayOperator;
                          });
                        } else if (displayNum1 != '0' &&
                            displayOperator == '' &&
                            displayNum2 == '0') {
                          setState(() {
                            displayOperator = '/';
                            result = displayNum1 + displayOperator;
                          });
                        } else if (displayNum1 != '0' &&
                            displayOperator != '' &&
                            displayNum2 == '0') {
                          setState(() {
                            displayOperator = '/';
                            result = displayNum1 + displayOperator;
                          });
                        } else if (displayNum1 != '0' &&
                            displayOperator != '' &&
                            displayNum2 != '0') {
                          setState(() {
                            result =
                                displayNum1 + displayOperator + displayNum2;
                          });
                        }
                      },
                      child: const Text(
                        '/',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 50.0,
                    width: 50.0,
                    child: FloatingActionButton(
                      backgroundColor: const Color.fromARGB(255, 44, 42, 42),
                      child: const Text(
                        '7',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      onPressed: () {
                        if (displayNum1 == '0' &&
                            displayOperator == '' &&
                            displayNum2 == '0') {
                          setState(() {
                            displayNum1 = '7';
                            num1 = num.parse(displayNum1);
                            result = displayNum1;
                          });
                        } else if (displayNum1 != '0' &&
                            displayOperator == '' &&
                            displayNum2 == '0') {
                          setState(() {
                            displayNum1 += '7';
                            num1 = num.parse(displayNum1);
                            result = displayNum1;
                          });
                        } else if (displayNum1 != '0' &&
                            displayOperator != '' &&
                            displayNum2 == '0') {
                          setState(() {
                            displayNum2 = '7';
                            num2 = num.parse(displayNum2);
                            result =
                                displayNum1 + displayOperator + displayNum2;
                          });
                        } else if (displayNum1 != '0' &&
                            displayOperator != '' &&
                            displayNum2 != '0') {
                          setState(() {
                            displayNum2 += '7';
                            num2 = num.parse(displayNum2);
                            result =
                                displayNum1 + displayOperator + displayNum2;
                          });
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                    width: 50.0,
                    child: FloatingActionButton(
                      backgroundColor: const Color.fromARGB(255, 44, 42, 42),
                      child: const Text(
                        '8',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      onPressed: () {
                        if (displayNum1 == '0' &&
                            displayOperator == '' &&
                            displayNum2 == '0') {
                          setState(() {
                            displayNum1 = '8';
                            num1 = num.parse(displayNum1);
                            result = displayNum1;
                          });
                        } else if (displayNum1 != '0' &&
                            displayOperator == '' &&
                            displayNum2 == '0') {
                          setState(() {
                            displayNum1 += '8';
                            num1 = num.parse(displayNum1);
                            result = displayNum1;
                          });
                        } else if (displayNum1 != '0' &&
                            displayOperator != '' &&
                            displayNum2 == '0') {
                          setState(() {
                            displayNum2 = '8';
                            num2 = num.parse(displayNum2);
                            result =
                                displayNum1 + displayOperator + displayNum2;
                          });
                        } else if (displayNum1 != '0' &&
                            displayOperator != '' &&
                            displayNum2 != '0') {
                          setState(() {
                            displayNum2 += '8';
                            num2 = num.parse(displayNum2);
                            result =
                                displayNum1 + displayOperator + displayNum2;
                          });
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                    width: 50.0,
                    child: FloatingActionButton(
                      backgroundColor: const Color.fromARGB(255, 44, 42, 42),
                      child: const Text(
                        '9',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      onPressed: () {
                        if (displayNum1 == '0' &&
                            displayOperator == '' &&
                            displayNum2 == '0') {
                          setState(() {
                            displayNum1 = '9';
                            num1 = num.parse(displayNum1);
                            result = displayNum1;
                          });
                        } else if (displayNum1 != '0' &&
                            displayOperator == '' &&
                            displayNum2 == '0') {
                          setState(() {
                            displayNum1 += '9';
                            num1 = num.parse(displayNum1);
                            result = displayNum1;
                          });
                        } else if (displayNum1 != '0' &&
                            displayOperator != '' &&
                            displayNum2 == '0') {
                          setState(() {
                            displayNum2 = '9';
                            num2 = num.parse(displayNum2);
                            result =
                                displayNum1 + displayOperator + displayNum2;
                          });
                        } else if (displayNum1 != '0' &&
                            displayOperator != '' &&
                            displayNum2 != '0') {
                          setState(() {
                            displayNum2 += '9';
                            num2 = num.parse(displayNum2);
                            result =
                                displayNum1 + displayOperator + displayNum2;
                          });
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                    width: 50.0,
                    child: FloatingActionButton(
                      backgroundColor: const Color.fromARGB(255, 207, 154, 74),
                      onPressed: () {
                        if (displayOperator == '' &&
                            displayNum1 != '0' &&
                            displayNum2 == '0') {
                          setState(() {
                            displayOperator = '*';
                            result = displayNum1 + displayOperator;
                          });
                        } else if (displayNum1 == '0' &&
                            displayOperator == '' &&
                            displayNum2 == '0') {
                          setState(() {
                            displayOperator = '';
                            result = displayNum1 + displayOperator;
                          });
                        } else if (displayNum1 != '0' &&
                            displayOperator == '' &&
                            displayNum2 == '0') {
                          setState(() {
                            displayOperator = '*';
                            result = displayNum1 + displayOperator;
                          });
                        } else if (displayNum1 != '0' &&
                            displayOperator != '' &&
                            displayNum2 == '0') {
                          setState(() {
                            displayOperator = '*';
                            result = displayNum1 + displayOperator;
                          });
                        } else if (displayNum1 != '0' &&
                            displayOperator != '' &&
                            displayNum2 != '0') {
                          setState(() {
                            result =
                                displayNum1 + displayOperator + displayNum2;
                          });
                        }
                      },
                      child: const Text(
                        'X',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 50.0,
                    width: 50.0,
                    child: FloatingActionButton(
                      backgroundColor: const Color.fromARGB(255, 44, 42, 42),
                      child: const Text(
                        '4',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      onPressed: () {
                        if (displayNum1 == '0' &&
                            displayOperator == '' &&
                            displayNum2 == '0') {
                          setState(() {
                            displayNum1 = '4';
                            num1 = num.parse(displayNum1);
                            result = displayNum1;
                          });
                        } else if (displayNum1 != '0' &&
                            displayOperator == '' &&
                            displayNum2 == '0') {
                          setState(() {
                            displayNum1 += '4';
                            num1 = num.parse(displayNum1);
                            result = displayNum1;
                          });
                        } else if (displayNum1 != '0' &&
                            displayOperator != '' &&
                            displayNum2 == '0') {
                          setState(() {
                            displayNum2 = '4';
                            num2 = num.parse(displayNum2);
                            result =
                                displayNum1 + displayOperator + displayNum2;
                          });
                        } else if (displayNum1 != '0' &&
                            displayOperator != '' &&
                            displayNum2 != '0') {
                          setState(() {
                            displayNum2 += '4';
                            num2 = num.parse(displayNum2);
                            result =
                                displayNum1 + displayOperator + displayNum2;
                          });
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                    width: 50.0,
                    child: FloatingActionButton(
                      backgroundColor: const Color.fromARGB(255, 44, 42, 42),
                      child: const Text(
                        '5',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      onPressed: () {
                        if (displayNum1 == '0' &&
                            displayOperator == '' &&
                            displayNum2 == '0') {
                          setState(() {
                            displayNum1 = '5';
                            num1 = num.parse(displayNum1);
                            result = displayNum1;
                          });
                        } else if (displayNum1 != '0' &&
                            displayOperator == '' &&
                            displayNum2 == '0') {
                          setState(() {
                            displayNum1 += '5';
                            num1 = num.parse(displayNum1);
                            result = displayNum1;
                          });
                        } else if (displayNum1 != '0' &&
                            displayOperator != '' &&
                            displayNum2 == '0') {
                          setState(() {
                            displayNum2 = '5';
                            num2 = num.parse(displayNum2);
                            result =
                                displayNum1 + displayOperator + displayNum2;
                          });
                        } else if (displayNum1 != '0' &&
                            displayOperator != '' &&
                            displayNum2 != '0') {
                          setState(() {
                            displayNum2 += '5';
                            num2 = num.parse(displayNum2);
                            result =
                                displayNum1 + displayOperator + displayNum2;
                          });
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                    width: 50.0,
                    child: FloatingActionButton(
                      backgroundColor: const Color.fromARGB(255, 44, 42, 42),
                      child: const Text(
                        '6',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      onPressed: () {
                        if (displayNum1 == '0' &&
                            displayOperator == '' &&
                            displayNum2 == '0') {
                          setState(() {
                            displayNum1 = '6';
                            num1 = num.parse(displayNum1);
                            result = displayNum1;
                          });
                        } else if (displayNum1 != '0' &&
                            displayOperator == '' &&
                            displayNum2 == '0') {
                          setState(() {
                            displayNum1 += '6';
                            num1 = num.parse(displayNum1);
                            result = displayNum1;
                          });
                        } else if (displayNum1 != '0' &&
                            displayOperator != '' &&
                            displayNum2 == '0') {
                          setState(() {
                            displayNum2 = '6';
                            num2 = num.parse(displayNum2);
                            result =
                                displayNum1 + displayOperator + displayNum2;
                          });
                        } else if (displayNum1 != '0' &&
                            displayOperator != '' &&
                            displayNum2 != '0') {
                          setState(() {
                            displayNum2 += '6';
                            num2 = num.parse(displayNum2);
                            result =
                                displayNum1 + displayOperator + displayNum2;
                          });
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                    width: 50.0,
                    child: FloatingActionButton(
                      backgroundColor: const Color.fromARGB(255, 207, 154, 74),
                      onPressed: () {
                        if (displayOperator == '' &&
                            displayNum1 != '0' &&
                            displayNum2 == '0') {
                          setState(() {
                            displayOperator = '-';
                            result = displayNum1 + displayOperator;
                          });
                        } else if (displayNum1 == '0' &&
                            displayOperator == '' &&
                            displayNum2 == '0') {
                          setState(() {
                            displayOperator = '';
                            result = displayNum1 + displayOperator;
                          });
                        } else if (displayNum1 != '0' &&
                            displayOperator == '' &&
                            displayNum2 == '0') {
                          setState(() {
                            displayOperator = '-';
                            result = displayNum1 + displayOperator;
                          });
                        } else if (displayNum1 != '0' &&
                            displayOperator != '' &&
                            displayNum2 == '0') {
                          setState(() {
                            displayOperator = '-';
                            result = displayNum1 + displayOperator;
                          });
                        } else if (displayNum1 != '0' &&
                            displayOperator != '' &&
                            displayNum2 != '0') {
                          setState(() {
                            result =
                                displayNum1 + displayOperator + displayNum2;
                          });
                        }
                      },
                      child: const Text(
                        '-',
                        style: TextStyle(
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 50.0,
                      width: 50.0,
                      child: FloatingActionButton(
                        backgroundColor: const Color.fromARGB(255, 44, 42, 42),
                        onPressed: () {
                          if (displayNum1 == '0' &&
                              displayOperator == '' &&
                              displayNum2 == '0') {
                            setState(() {
                              displayNum1 = '1';
                              num1 = num.parse(displayNum1);
                              result = displayNum1;
                            });
                          } else if (displayNum1 != '0' &&
                              displayOperator == '' &&
                              displayNum2 == '0') {
                            setState(() {
                              displayNum1 += '1';
                              num1 = num.parse(displayNum1);
                              result = displayNum1;
                            });
                          } else if (displayNum1 != '0' &&
                              displayOperator != '' &&
                              displayNum2 == '0') {
                            setState(() {
                              displayNum2 = '1';
                              num2 = num.parse(displayNum2);
                              result =
                                  displayNum1 + displayOperator + displayNum2;
                            });
                          } else if (displayNum1 != '0' &&
                              displayOperator != '' &&
                              displayNum2 != '0') {
                            setState(() {
                              displayNum2 += '1';
                              num2 = num.parse(displayNum2);
                              result =
                                  displayNum1 + displayOperator + displayNum2;
                            });
                          }
                        },
                        child: const Text(
                          '1',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                      width: 50.0,
                      child: FloatingActionButton(
                        backgroundColor: const Color.fromARGB(255, 44, 42, 42),
                        onPressed: () {
                          if (displayNum1 == '0' &&
                              displayOperator == '' &&
                              displayNum2 == '0') {
                            setState(() {
                              displayNum1 = '2';
                              num1 = num.parse(displayNum1);
                              result = displayNum1;
                            });
                          } else if (displayNum1 != '0' &&
                              displayOperator == '' &&
                              displayNum2 == '0') {
                            setState(() {
                              displayNum1 += '2';
                              num1 = num.parse(displayNum1);
                              result = displayNum1;
                            });
                          } else if (displayNum1 != '0' &&
                              displayOperator != '' &&
                              displayNum2 == '0') {
                            setState(() {
                              displayNum2 = '2';
                              num2 = num.parse(displayNum2);
                              result =
                                  displayNum1 + displayOperator + displayNum2;
                            });
                          } else if (displayNum1 != '0' &&
                              displayOperator != '' &&
                              displayNum2 != '0') {
                            setState(() {
                              displayNum2 += '2';
                              num2 = num.parse(displayNum2);
                              result =
                                  displayNum1 + displayOperator + displayNum2;
                            });
                          }
                        },
                        child: const Text(
                          '2',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                      width: 50.0,
                      child: FloatingActionButton(
                        backgroundColor: const Color.fromARGB(255, 44, 42, 42),
                        onPressed: () {
                          if (displayNum1 == '0' &&
                              displayOperator == '' &&
                              displayNum2 == '0') {
                            setState(() {
                              displayNum1 = '3';
                              num1 = num.parse(displayNum1);
                              result = displayNum1;
                            });
                          } else if (displayNum1 != '0' &&
                              displayOperator == '' &&
                              displayNum2 == '0') {
                            setState(() {
                              displayNum1 += '3';
                              num1 = num.parse(displayNum1);
                              result = displayNum1;
                            });
                          } else if (displayNum1 != '0' &&
                              displayOperator != '' &&
                              displayNum2 == '0') {
                            setState(() {
                              displayNum2 = '3';
                              num2 = num.parse(displayNum2);
                              result =
                                  displayNum1 + displayOperator + displayNum2;
                            });
                          } else if (displayNum1 != '0' &&
                              displayOperator != '' &&
                              displayNum2 != '0') {
                            setState(() {
                              displayNum2 += '3';
                              num2 = num.parse(displayNum2);
                              result =
                                  displayNum1 + displayOperator + displayNum2;
                            });
                          }
                        },
                        child: const Text(
                          '3',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                      width: 50.0,
                      child: FloatingActionButton(
                        backgroundColor:
                            const Color.fromARGB(255, 207, 154, 74),
                        onPressed: () {
                          if (displayOperator == '' &&
                              displayNum1 != '0' &&
                              displayNum2 == '0') {
                            setState(() {
                              displayOperator = '+';
                              result = displayNum1 + displayOperator;
                            });
                          } else if (displayNum1 == '0' &&
                              displayOperator == '' &&
                              displayNum2 == '0') {
                            setState(() {
                              displayOperator = '';
                              result = displayNum1 + displayOperator;
                            });
                          } else if (displayNum1 != '0' &&
                              displayOperator == '' &&
                              displayNum2 == '0') {
                            setState(() {
                              displayOperator = '+';
                              result = displayNum1 + displayOperator;
                            });
                          } else if (displayNum1 != '0' &&
                              displayOperator != '' &&
                              displayNum2 == '0') {
                            setState(() {
                              displayOperator = '+';
                              result = displayNum1 + displayOperator;
                            });
                          } else if (displayNum1 != '0' &&
                              displayOperator != '' &&
                              displayNum2 != '0') {
                            setState(() {
                              result =
                                  displayNum1 + displayOperator + displayNum2;
                            });
                          }
                        },
                        child: const Text(
                          '+',
                          style: TextStyle(
                            fontSize: 25.0,
                          ),
                        ),
                      ),
                    )
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton.extended(
                    backgroundColor: const Color.fromARGB(255, 44, 42, 42),
                    label: const Text(
                      '0           ',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      if (displayNum1 == '0' &&
                          displayOperator == '' &&
                          displayNum2 == '0') {
                        setState(() {
                          displayNum1 = '0';
                          num1 = num.parse(displayNum1);
                          result = displayNum1;
                        });
                      } else if (displayNum1 != '0' &&
                          displayOperator == '' &&
                          displayNum2 == '0') {
                        setState(() {
                          displayNum1 += '0';
                          num1 = num.parse(displayNum1);
                          result = displayNum1;
                        });
                      } else if (displayNum1 != '0' &&
                          displayOperator != '' &&
                          displayNum2 == '0') {
                        setState(() {
                          displayNum2 = '0';
                          num2 = num.parse(displayNum2);
                          result = displayNum1 + displayOperator + displayNum2;
                        });
                      } else if (displayNum1 != '0' &&
                          displayOperator != '' &&
                          displayNum2 != '0') {
                        setState(() {
                          displayNum2 += '0';
                          num2 = num.parse(displayNum2);
                          result = displayNum1 + displayOperator + displayNum2;
                        });
                      }
                    },
                  ),
                  SizedBox(
                    height: 50.0,
                    width: 50.0,
                    child: FloatingActionButton(
                        backgroundColor: const Color.fromARGB(255, 44, 42, 42),
                        onPressed: () {
                          if (displayNum1 == '0' &&
                              displayOperator == '' &&
                              displayNum2 == '0') {
                            setState(() {
                              displayNum1 += '.';
                              result = displayNum1;
                            });
                          } else if (displayNum1 != '0' &&
                              displayOperator == '' &&
                              displayNum2 == '0' &&
                              displayNum1.contains('.') == false) {
                            setState(() {
                              displayNum1 += '.';
                              result = displayNum1;
                            });
                          } else if (displayNum1 != '0' &&
                              displayOperator != '' &&
                              displayNum2 == '0' &&
                              displayNum2.contains('.') == false) {
                            setState(() {
                              displayNum2 += '.';
                              result =
                                  displayNum1 + displayOperator + displayNum2;
                            });
                          } else if (displayNum1 != '0' &&
                              displayOperator != '' &&
                              displayNum2 != '0' &&
                              displayNum2.contains('.') == false) {
                            setState(() {
                              displayNum2 += '.';
                              result =
                                  displayNum1 + displayOperator + displayNum2;
                            });
                          } else if (displayNum1 != '0' &&
                              displayOperator != '' &&
                              displayNum2 == '0' &&
                              displayNum2.contains('.') == false) {
                            displayNum2 += '.';
                            result =
                                displayNum1 + displayOperator + displayNum2;
                          }
                        },
                        child: const Text(
                          '.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30.0,
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 50.0,
                    width: 50.0,
                    child: FloatingActionButton(
                        backgroundColor:
                            const Color.fromARGB(255, 207, 154, 74),
                        onPressed: () {
                          if (displayOperator == '+') {
                            setState(() {
                              displayOperator = '';
                              result = (num1 + num2).toString();
                              displayNum1 = result;
                              displayNum2 = '0';
                              num1 = num.parse(displayNum1);
                              num2 = num.parse(displayNum2);
                            });
                          } else if (displayOperator == '*') {
                            setState(() {
                              displayOperator = '';
                              result = (num1 * num2).toString();
                              displayNum1 = result;
                              displayNum2 = '0';
                              num1 = num.parse(displayNum1);
                              num2 = num.parse(displayNum2);
                            });
                          } else if (displayOperator == '-') {
                            setState(() {
                              displayOperator = '';
                              result = (num1 - num2).toString();
                              displayNum1 = result;
                              displayNum2 = '0';
                              num1 = num.parse(displayNum1);
                              num2 = num.parse(displayNum2);
                            });
                            // }
                          } else if (displayOperator == '/') {
                            if (num2 == 0) {
                              setState(() {
                                displayOperator = '';
                                result = 'Undefined';
                                displayNum1 = '0';
                                displayNum2 = '0';
                                num1 = 0;
                                num2 = 0;
                              });
                            } else {
                              if ((num1 % num2) == 0) {
                                setState(() {
                                  displayOperator = '';
                                  result = ((num1 ~/ num2)).toString();
                                  displayNum1 = result;
                                  displayNum2 = '0';
                                  num1 = int.parse(displayNum1);
                                  num2 = int.parse(displayNum2);
                                });
                              } else if ((num1 % num2 != 0)) {
                                setState(() {
                                  displayOperator = '';
                                  result = (num1 / num2).toString();
                                  displayNum1 = result;
                                  displayNum2 = '0';
                                  num1 = num.parse(displayNum1);
                                  num2 = num.parse(displayNum2);
                                });
                              }
                            }
                          }
                        },
                        child: const Text(
                          '=',
                          style: TextStyle(
                            fontSize: 25.0,
                          ),
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
