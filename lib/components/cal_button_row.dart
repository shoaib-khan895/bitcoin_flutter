import 'package:bitcoin_flutter/components/reuseable_buttons.dart';
import 'package:flutter/cupertino.dart';

class CalButtonRow extends StatelessWidget {
  var zero;
  var three;
  var one;
  var two;
  CalButtonRow({required this.zero,this.one,this.two,this.three,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ReuseableButton(val: zero,),
        ReuseableButton(val: one,),
        ReuseableButton(val: two,),
        ReuseableButton(val: three,),

      ],
    );
  }
}
