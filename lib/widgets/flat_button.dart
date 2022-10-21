import 'package:flutter/material.dart';
import 'package:lettutor/config/theme.dart';

class AppFlatButton extends StatelessWidget {
  final String text;
  final Function function;

  AppFlatButton({required this.text, required this.function});
  @override
  Widget build(BuildContext context) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      primary: AppTheme.mainColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2.0)),
      ),
    );

    return TextButton(
      style: flatButtonStyle,
      onPressed: () {
        function();
      },
      child: Text(text, style: TextStyle(fontSize: 14)),
    );
  }
}
