import "package:flutter/material.dart";
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
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    Widget calcbutton(String btntxt, Color txtcolor){
      return Container(
        width: screenWidth * 0.24,
        padding: EdgeInsets.symmetric(vertical: 5),
        margin: EdgeInsets.symmetric(vertical: 1),
        decoration: BoxDecoration(
          // border: Border.all(color: Colors.grey,width: 1,)
        ),
        child: InkWell(
          onTap: (){},
          child: Text(btntxt,textAlign: TextAlign.center,style: TextStyle(
            fontSize: 35,color: txtcolor,
          ),
          ),
        ),
      );
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
          title: Text("Calculator"),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
          //   Calculator display
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(padding: EdgeInsets.all(10),
                  child: Text("0",textAlign: TextAlign.left,style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),),)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcbutton("C", Colors.blue),
                  calcbutton("()", Colors.blue),
                  calcbutton("%", Colors.blue),
                  calcbutton("/", Colors.blue),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcbutton("7", Colors.black),
                  calcbutton("8", Colors.black),
                  calcbutton("9", Colors.black),
                  calcbutton("x", Colors.blue),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcbutton("4", Colors.black),
                  calcbutton("5", Colors.black),
                  calcbutton("6", Colors.black),
                  calcbutton("-", Colors.blue),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcbutton("1", Colors.black),
                  calcbutton("2", Colors.black),
                  calcbutton("3", Colors.black),
                  calcbutton("+", Colors.blue),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calcbutton(".", Colors.black),
                  calcbutton("0", Colors.black),
                  calcbutton("+/-", Colors.black),
                  calcbutton("=", Colors.black),
                ],
              ),
              SizedBox(height: 20,)
          ],),
        ),
      ),
    );
  }
}
