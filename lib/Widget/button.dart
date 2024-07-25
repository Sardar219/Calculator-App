import "package:flutter/material.dart";
import "package:flutter_first/color.dart";
class button1 extends StatelessWidget {
  const button1({
    super.key, required this.label, this.textColor=Colors.white
  });
  final String label;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // TODO: on Tap
      },
      child: Material(
        elevation:3,
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(50),
        child: CircleAvatar(
          radius: 36,
          child: Text(label,style: TextStyle(fontSize: 35,color: textColor),),
          backgroundColor:AppColors.secondary2Color,
        ),
      ),
    );
  }
}