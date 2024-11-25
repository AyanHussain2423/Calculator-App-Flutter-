import 'package:calculator/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constant/colors.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Provider.of<CalculatorProvider>(context,listen: false).setValue("=");
      },
      child: Container(
        height: 170,
        width: 70,
        margin: EdgeInsets.only(right: 10,left: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color:Colors.black,
        ),
        child: Center(
            child: Text("=",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppColors.secondaryColor
              ),
            )
        ),
      ),
    );
  }
}