import "package:flutter/material.dart";
import "package:flutter_first/color.dart";
class custome extends StatelessWidget {
  const custome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 5,vertical: 20),
      child: TextField(
        style: TextStyle(fontSize: 35),
        decoration: InputDecoration(
          border: InputBorder.none,
          fillColor: AppColors.primaryColor,
          filled: true,
        ),
        readOnly: true,
        autofocus: true,
        showCursor: true,
      ),);
  }
}