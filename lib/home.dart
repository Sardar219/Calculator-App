import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String resultString = "test";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
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
                    "",
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
                    onPressed: () {},
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
                    onPressed: () {},
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
                    onPressed: () {},
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
                    onPressed: () {},
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
                    onPressed: () {},
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
                    onPressed: () {},
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
                    onPressed: () {},
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
                    onPressed: () {},
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
                    onPressed: () {},
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
                    onPressed: () {},
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
                    onPressed: () {},
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
                    onPressed: () {},
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
                    onPressed: () {},
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
                    onPressed: () {},
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
                    onPressed: () {},
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
                    onPressed: () {},
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
                    onPressed: () {},
                    child: Text(
                      "=",
                      style: TextStyle(fontSize: 25),
                    )),
              ))
            ],
          )
        ],
      ),
    ));
  }
}
