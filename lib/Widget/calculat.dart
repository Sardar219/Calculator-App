import 'package:flutter/cupertino.dart';

import '../color.dart';

class calculat extends StatelessWidget {
  const calculat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 160,

      decoration: BoxDecoration(color: AppColors.secondaryColor,borderRadius: BorderRadius.circular(40)),
      child: Center(child:Text("=",style: TextStyle(fontSize: 40),),),
    );
  }
}