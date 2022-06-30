import 'package:flutter/material.dart';
import 'constants.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {@required this.colour, @required this.title, @required this.onPressed});
  final Color colour;
  final String title;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 5.0,
      ),
      child: Material(
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 30.0,
          onPressed: onPressed,
          child: Text(
            title,
            style: kTextStyle.copyWith(color: Color(0xffeceae3)),
          ),
        ),
      ),
    );
  }
}
