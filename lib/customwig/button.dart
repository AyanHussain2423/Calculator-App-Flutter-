import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constant/colors.dart';
import '../provider/cal_provider.dart';

class Cutom_Button extends StatelessWidget {
  const Cutom_Button({
    super.key, required this.label, this.textcolor = Colors.white,
  });
final String label;
final Color textcolor;
  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: (){
        Provider.of<CalculatorProvider>(context,listen: false).setValue(label);
      },
      child: Material(
        elevation: 4,
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(36),
        child: CircleAvatar(
          radius: 36,
          backgroundColor: Colors.black,
          child: Text(label,
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                color: textcolor
            ),
          ),
        ),
      ),
    );
  }
}