import 'package:flutter/material.dart';

class Share extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Send',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: CustomButton(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            'Recieve',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Container(
            height: 257,
            width: 72,
            decoration: BoxDecoration(
                color: Color(0xFF6D6969),
                borderRadius: BorderRadius.all(Radius.circular(70))),
          ),
        ),
        Center(
          child: Container(
            height: 95,
            width: 95,
            decoration:
                BoxDecoration(color: Color(0xFF7F6BF9), shape: BoxShape.circle),
          ),
        )
      ],
    );
  }
}
