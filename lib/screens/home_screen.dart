import 'package:calculator/constant/colors.dart';
import 'package:calculator/provider/cal_provider.dart';
import 'package:calculator/screens/widgets_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../customwig/button.dart';
import '../customwig/cal_button.dart';
import '../customwig/textfield.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    const conpadding =EdgeInsets.symmetric(vertical: 16,horizontal: 16);
    return Consumer<CalculatorProvider>(
      builder: (context,provider,_){
      return Scaffold(
        appBar: AppBar(
          title: const Text("Calculator"),
          backgroundColor: Colors.black,
        ),
        body: Center(
            child: Column(
              children: [
                CustomWidgetText(controller: provider.compController),
                const Spacer(),
                Container(
                  height: MediaQuery.sizeOf(context).height*0.6,
                  width: double.infinity,
                  padding: conpadding,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: List.generate(4,(index)=> buttonlist[index]),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: List.generate(4,(index)=> buttonlist[index+4]),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: List.generate(4,(index)=> buttonlist[index+8]),
                        ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           Expanded(
                             child: Column(
                               children: [
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                                 children: List.generate(3,(index)=> buttonlist[index+12]),
                               ),
                               SizedBox(
                                 height: 30,
                               ),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                                 children: List.generate(3,(index)=> buttonlist[index+15]),
                               ),
                               ]
                             ),
                           ),
                           CalculateButton()
                         ],
                       ),
                      ]
                    ),
                  ),
                ),
              ],
            )
        ),
       );
      }
    );
  }
}

