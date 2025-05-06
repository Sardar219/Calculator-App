import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String resultString = "";
  String operator = "";

  void handleNumberPressed(String numberAsString) {
    setState(() {
      handleButtonPressed(numberAsString);
    });
  }

  void handleButtonPressed(String buttonPressed) {
    setState(() {
      resultString += buttonPressed;
    });
  }

  void handleOperatorButtonPressed(String operator) {
    setState(() {
      resultString += operator;
      this.operator = operator;
    });
  }

  void handleClearButtonPressed() {
    setState(() {
      resultString = "";
    });
  }

  void handleEqualButtonPressed() {
    setState(() {
      int leftSideValueAsInteger =
          int.parse(resultString.substring(0, resultString.indexOf(operator)));
      int rightSideValueAsInteger = int.parse(resultString.substring(
          resultString.indexOf(operator) + 1, resultString.length));
      switch (operator) {
        case "+":
          resultString =
              (leftSideValueAsInteger + rightSideValueAsInteger).toString();
          break;
        case "-":
          resultString =
              (leftSideValueAsInteger - rightSideValueAsInteger).toString();
          break;
        case "x":
          resultString =
              (leftSideValueAsInteger * rightSideValueAsInteger).toString();
          break;
        case "/":
          resultString =
              (leftSideValueAsInteger ~/ rightSideValueAsInteger).toString();
          break;
      }
    });
  }

  void handleDeleteButtonPressed() {
    setState(() {
      if (resultString.isNotEmpty) {
        resultString = resultString.substring(0, resultString.length - 1);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Container(
                  height: 75,
                  color: Colors.lightBlue.shade50,
                  alignment: Alignment.center,
                  child: Text(
                    resultString,
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              SizedBox(
                width: 100,
                height: 50,
                child: FilledButton.tonal(
                    onPressed: () {
                      handleNumberPressed("1");
                    },
                    child: Text(
                      "1",
                      style: TextStyle(fontSize: 25),
                    )),
              ),
              Spacer(),
              SizedBox(
                width: 100,
                height: 50,
                child: FilledButton.tonal(
                    onPressed: () {
                      handleNumberPressed("2");
                    },
                    child: Text(
                      "2",
                      style: TextStyle(fontSize: 25),
                    )),
              ),
              Spacer(),
              SizedBox(
                width: 100,
                height: 50,
                child: FilledButton.tonal(
                    onPressed: () {
                      handleNumberPressed("3");
                    },
                    child: Text(
                      "3",
                      style: TextStyle(fontSize: 25),
                    )),
              ),
              Spacer(),
              SizedBox(
                width: 100,
                height: 50,
                child: FilledButton.tonal(
                    onPressed: () {
                      handleOperatorButtonPressed("+");
                    },
                    child: Text(
                      "+",
                      style: TextStyle(fontSize: 25),
                    )),
              ),
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              SizedBox(
                width: 100,
                height: 50,
                child: FilledButton.tonal(
                    onPressed: () {
                      handleNumberPressed("4");
                    },
                    child: Text(
                      "4",
                      style: TextStyle(fontSize: 25),
                    )),
              ),
              Spacer(),
              SizedBox(
                width: 100,
                height: 50,
                child: FilledButton.tonal(
                    onPressed: () {
                      handleNumberPressed("5");
                    },
                    child: Text(
                      "5",
                      style: TextStyle(fontSize: 25),
                    )),
              ),
              Spacer(),
              SizedBox(
                width: 100,
                height: 50,
                child: FilledButton.tonal(
                    onPressed: () {
                      handleNumberPressed("6");
                    },
                    child: Text(
                      "6",
                      style: TextStyle(fontSize: 25),
                    )),
              ),
              Spacer(),
              SizedBox(
                width: 100,
                height: 50,
                child: FilledButton.tonal(
                    onPressed: () {
                      handleOperatorButtonPressed("-");
                    },
                    child: Text(
                      "-",
                      style: TextStyle(fontSize: 25),
                    )),
              ),
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              SizedBox(
                width: 100,
                height: 50,
                child: FilledButton.tonal(
                    onPressed: () {
                      handleNumberPressed("7");
                    },
                    child: Text(
                      "7",
                      style: TextStyle(fontSize: 25),
                    )),
              ),
              Spacer(),
              SizedBox(
                width: 100,
                height: 50,
                child: FilledButton.tonal(
                    onPressed: () {
                      handleNumberPressed("8");
                    },
                    child: Text(
                      "8",
                      style: TextStyle(fontSize: 25),
                    )),
              ),
              Spacer(),
              SizedBox(
                width: 100,
                height: 50,
                child: FilledButton.tonal(
                    onPressed: () {
                      handleNumberPressed("9");
                    },
                    child: Text(
                      "9",
                      style: TextStyle(fontSize: 25),
                    )),
              ),
              Spacer(),
              SizedBox(
                width: 100,
                height: 50,
                child: FilledButton.tonal(
                    onPressed: () {
                      handleOperatorButtonPressed("x");
                    },
                    child: Text(
                      "x",
                      style: TextStyle(fontSize: 25),
                    )),
              ),
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              SizedBox(
                width: 100,
                height: 50,
                child: FilledButton.tonal(
                    onPressed: () {
                      handleClearButtonPressed();
                    },
                    child: Text(
                      "C",
                      style: TextStyle(fontSize: 25),
                    )),
              ),
              Spacer(),
              SizedBox(
                width: 100,
                height: 50,
                child: FilledButton.tonal(
                    onPressed: () {
                      handleNumberPressed("0");
                    },
                    child: Text(
                      "0",
                      style: TextStyle(fontSize: 25),
                    )),
              ),
              Spacer(),
              SizedBox(
                width: 100,
                height: 50,
                child: FilledButton.tonal(
                    onPressed: () {
                      handleDeleteButtonPressed();
                    },
                    child: Text(
                      "DEL",
                      style: TextStyle(fontSize: 25),
                    )),
              ),
              Spacer(),
              SizedBox(
                width: 100,
                height: 50,
                child: FilledButton.tonal(
                    onPressed: () {
                      handleOperatorButtonPressed("/");
                    },
                    child: Text(
                      "/",
                      style: TextStyle(fontSize: 25),
                    )),
              ),
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Expanded(
                  child: SizedBox(
                height: 50,
                child: FilledButton.tonal(
                    onPressed: () {
                      handleEqualButtonPressed();
                    },
                    child: Text(
                      "=",
                      style: TextStyle(fontSize: 25),
                    )),
              ))
            ],
          ),
          Spacer()
        ],
      ),
    );
  }
}
