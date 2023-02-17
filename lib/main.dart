import 'package:bitcoin_flutter/calculator_main.dart';
import 'package:flutter/material.dart';

import 'TaskScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalculatorUI(),
    );
  }
}