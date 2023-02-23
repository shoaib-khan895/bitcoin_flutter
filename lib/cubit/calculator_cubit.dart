import 'package:bloc/bloc.dart';



class CalculatorCubit extends Cubit<int> {
  int firstNum = 0;
  int secondNum = 0;
  String history = '';
  String textToDisplay = '';
  String res = '';
  String operation = '';

  CalculatorCubit() : super(0);
  //
  // void calculateResult(value) {
  //   if (value == "=") {
  //     emit(calculate(value));
  //   }
  //   calculate(value);
  // }

  // void add(value) {
  //   calculate(value);
  //   emit(state + int.parse(textToDisplay));
  // }
  //
  // void sub(value) {
  //   calculate(value);
  //   firstNum - secondNum;
  // }
  //
  // int multiply() {
  //   return firstNum * secondNum;
  // }
  //
  // double divided() {
  //   return firstNum / secondNum;
  // }

  void calculate(btnVal) {
    if (btnVal == "AC") {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = "";
      history = "";
      emit(state-state);
    } else if (btnVal == "+" ||
        btnVal == "-" ||
        btnVal == "x" ||
        btnVal == "/") {
      firstNum = int.parse(textToDisplay);
      res = '';
      operation = btnVal;
    } else if (btnVal == "=") {
      secondNum = int.parse(textToDisplay);
      if (operation == "+") {
        res = (firstNum + secondNum).toString();
        emit(state+int.parse(res));
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == "-") {
        res = (firstNum - secondNum).toString();
        emit(state+int.parse(res));
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == "x") {
        res = (firstNum * secondNum).toString();
        emit(state+int.parse(res));

        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == "/") {
        res = (firstNum / secondNum).toString();
        emit(state+int.parse(res));

        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      res = int.parse(textToDisplay + btnVal).toString();
      emit(state);
    }
     textToDisplay=res;
    emit(int.parse(res));
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
