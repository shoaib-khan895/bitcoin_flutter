// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bitcoin_flutter/cubit/calculator_cubit.dart';
import 'package:flutter/material.dart';
import '../components/reuseable_buttons.dart';
import '../constants/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  // int firstNum = 0;
  // int secondNum = 0;
  // String history = '';
  // String textToDisplay = '';
  // String res = '';
  // String operation = '';
  //
  // void btnOnClick(String btnVal) {
  //   print(btnVal);
  //   if (btnVal == "AC") {
  //     textToDisplay = '';
  //     firstNum = 0;
  //     secondNum = 0;
  //     res = "";
  //     history = "";
  //   } else if (btnVal == "+" ||
  //       btnVal == "-" ||
  //       btnVal == "x" ||
  //       btnVal == "/") {
  //     firstNum = int.parse(textToDisplay);
  //     res = '';
  //     operation = btnVal;
  //   } else if (btnVal == "=") {
  //     secondNum = int.parse(textToDisplay);
  //     if (operation == "+") {
  //       res = (firstNum + secondNum).toString();
  //       history =
  //           firstNum.toString() + operation.toString() + secondNum.toString();
  //     }
  //     if (operation == "-") {
  //       res = (firstNum - secondNum).toString();
  //       history =
  //           firstNum.toString() + operation.toString() + secondNum.toString();
  //     }
  //     if (operation == "x") {
  //       res = (firstNum * secondNum).toString();
  //       history =
  //           firstNum.toString() + operation.toString() + secondNum.toString();
  //     }
  //     if (operation == "/") {
  //       res = (firstNum / secondNum).toString();
  //       history =
  //           firstNum.toString() + operation.toString() + secondNum.toString();
  //     }
  //   } else {
  //     res = int.parse(textToDisplay + btnVal).toString();
  //   }
  //   setState(() {
  //     textToDisplay = res;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Spacer(
            flex: 1,
          ),
          BlocBuilder<CalculatorCubit, int>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    state.toString(),
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.w800,
                        fontSize: 45),
                  ),
                  // Text(
                  //   state.toString(),
                  //   style: TextStyle(
                  //       color: Colors.white,
                  //       fontWeight: FontWeight.w800,
                  //       fontSize: 30),
                  // ),
                  SizedBox(
                    height: 10.0,
                  )
                ],
              );
            },
          ),

          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color.fromRGBO(105, 105, 105, 100),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                itemCount: btn.length,
                itemBuilder: (BuildContext context, int index) {
                  return ReuseAbleButton(
                    txt: btn[index],
                    usrTxt: (value) {
                      context.read<CalculatorCubit>().calculate(value);
                    },
                  );
                }),
          )
        ],
      ),
    );
  }
}

//bloc cubit in this code!!