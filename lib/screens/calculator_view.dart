import 'package:bitcoin_flutter/cubit/calculator_cubit.dart';
import 'package:bitcoin_flutter/screens/calculator_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CalculatorCubit(),
      child: CalculatorPage(),
    );
  }
}
