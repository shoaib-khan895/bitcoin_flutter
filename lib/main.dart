import 'package:bitcoin_flutter/screens/calculator_page.dart';
import 'package:bitcoin_flutter/screens/calculator_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends MaterialApp {
  const MyApp({super.key}) : super(home: const CalculatorView());
}
