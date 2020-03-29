import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  final String text;
  final double width;
  CustomButton({@required this.text, this.width});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {},
      elevation: 5,
      textColor: Colors.white,
      padding: const EdgeInsets.all(0.0),
      child: Container(
        width: width ?? 260,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF667EEA),
                Color(0xFF64B6FF),
              ],
            )
        ),
        padding: const EdgeInsets.symmetric(vertical: 11),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
