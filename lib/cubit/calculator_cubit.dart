import 'package:bloc/bloc.dart';
import '../constants/calculator_model.dart';

class CalculatorCubit extends Cubit<CalculatorModel> {
  int firstNum = 0;
  int secondNum = 0;
  String operation = '';
  String res = '';

  CalculatorCubit() : super(CalculatorModel(history: '', textToDisplay: ''));
  void calculate(btnVal) {
    if (btnVal == "AC") {
      firstNum = 0;
      secondNum = 0;
      res = "";
      emit(CalculatorModel(history: ""));
    } else if (btnVal == "+" ||
        btnVal == "-" ||
        btnVal == "x" ||
        btnVal == "/") {
      firstNum = int.tryParse(state.textToDisplay ?? '0')!;
      res = '';
      operation = btnVal;
    } else if (btnVal == "=") {
      secondNum = int.tryParse(state.textToDisplay ?? '0')!;
      if (operation == "+") {
        res = ((firstNum) + (secondNum)).toString();
        emit(CalculatorModel(
            textToDisplay: state.textToDisplay! + res.toString(),
            history: ("$firstNum$operation$secondNum")));
      }
      if (operation == "-") {
        res = (firstNum - (secondNum)).toString();
        emit(CalculatorModel(
            textToDisplay: state.textToDisplay! + res.toString(),
            history: ("$firstNum$operation$secondNum")));
      }
      if (operation == "x") {
        res = (firstNum * (secondNum)).toString();
        emit(CalculatorModel(
            textToDisplay: state.textToDisplay! + res.toString(),
            history: ("$firstNum$operation$secondNum")));
      }
      if (operation == "/") {
        res = (firstNum / (secondNum)).toString();
        emit(CalculatorModel(
            textToDisplay: state.textToDisplay! + res.toString(),
            history: ("$firstNum$operation$secondNum")));
      }
    } else {
      res = int.parse(state.textToDisplay! + btnVal).toString();
    }
    state.textToDisplay = res;
    emit(CalculatorModel(
        textToDisplay: state.textToDisplay, history: state.history));
  }
}
