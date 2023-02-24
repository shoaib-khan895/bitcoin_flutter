// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bitcoin_flutter/cubit/calculator_cubit.dart';
import 'package:flutter/material.dart';
import '../components/reuseable_buttons.dart';
import '../constants/calculator_model.dart';
import '../constants/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {

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
          BlocBuilder<CalculatorCubit, CalculatorModel>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    state.history.toString(),
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.w800,
                        fontSize: 45),
                  ),
                  Text(
                    state.textToDisplay.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 30),
                  ),
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
