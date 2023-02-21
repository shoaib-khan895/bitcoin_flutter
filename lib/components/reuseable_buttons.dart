import 'package:bitcoin_flutter/constants/constants.dart';
import 'package:flutter/material.dart';

class ReuseAbleButton extends StatelessWidget {
  final ValueChanged<String> usrTxt;
  final String txt;

  const ReuseAbleButton({
    required this.usrTxt,
    required this.txt,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => usrTxt(txt),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          radius: 20,
          backgroundColor: const Color.fromRGBO(105, 105, 105, 10),
          child: Text(
            txt,
            style: const TextStyle(
                fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
