import "package:flutter/material.dart";
import "package:flutter_first/Widget/custome.dart";
import "package:flutter_first/color.dart";
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
              ),
          ],),
        ),
      ),
    );
  }
}
