// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/cal_button_row.dart';

class CalculatorUI extends StatelessWidget {
  const CalculatorUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                ),
                width: 120,
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // ReuseIcons(),
                    Icon(
                      Icons.brightness_2,
                      color: Colors.white,
                    ) ,Icon(
                      Icons.sunny,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '3200',
                  style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.w800,
                      fontSize: 40),
                ),
                Text(
                  '1600 x 2',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                      fontSize: 35),
                ),
              ],
            ),
            Container(
              height: 500,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromRGBO(105, 105, 105, 100),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalButtonRow(zero:'AC' ,one:'%' ,two:'C' ,three:'<|>' ,),
                  CalButtonRow(zero:'7' ,one:'8' ,two:'9' ,three:'x' ,),
                  CalButtonRow(zero:'4' ,one:'5' ,two:'6' ,three:'-' ,),
                  CalButtonRow(zero:'1' ,one:'2' ,two:'3' ,three:'+' ,),
                  CalButtonRow(zero:'00' ,one:'0' ,two:'.' ,three:'=' ,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}




