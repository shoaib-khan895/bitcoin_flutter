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
      //emit(state);
      //emit(Values(history:state.history ));
    }
    state.textToDisplay = res;
    emit(CalculatorModel(
        textToDisplay: state.textToDisplay, history: state.history));
  }
}

// int firstNum = 0;
// int secondNum = 0;
// String history = '';
// String textToDisplay = '';
// String res = '';
// String operation = '';
//
// int btnOnClick(String btnVal) {
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
//   // setState(() {
//    return int.parse(res);
//   // });
// }
