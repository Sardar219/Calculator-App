import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter_first/Widget/button.dart";
import "package:flutter_first/Widget/custome.dart";
import "package:flutter_first/color.dart";

import "Widget/calculat.dart";
import "Widget/data.dart";
void main(){
  runApp(Calculator());
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    final screenWidth=MediaQuery.of(context).size.width;
    final screenHeight=MediaQuery.of(context).size.height;
    final padding=EdgeInsets.symmetric(horizontal: 25,vertical: 30);
    final decoration= BoxDecoration(color: AppColors.primaryColor,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20))
    );

    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          title: Text("Calculator"),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            children: [
              custome(),
              const Spacer(),
              Container(
                height: screenHeight*0.6,
                width: double.infinity,
                padding: padding,
                decoration:decoration,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(4, (index) => buttonList[index]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(4, (index) => buttonList[index+4]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(4, (index) => buttonList[index+8]),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(3, (index) => buttonList[index+12]),
                          ),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(3 , (index) => buttonList[index+15]),
                          ),
                        ],),
                      ),
                      SizedBox(width: 20,),
                      calculat()
                    ],
                  )
                ],),
              ),

          ],),
        ),
      ),
    );
  }
}

