import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReuseableButton extends StatelessWidget {
  var val;

  ReuseableButton({
    this.val,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      backgroundColor: Color.fromRGBO(105, 105, 105, 10),
      child: Text(
        '$val',
        style: TextStyle(
            fontSize: 35, fontWeight: FontWeight.w500, color: Colors.white),
      ),
    );
  }
}
