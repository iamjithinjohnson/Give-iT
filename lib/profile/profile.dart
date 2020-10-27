import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: CircleAvatar(
            child: Text(
              'G',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 50,
              ),
            ),
            radius: size.width / 6,
            backgroundColor: Color(0xFF009533),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child:
              //RichText(
              //     text: TextSpan(children: [
              //   TextSpan(text: 'Give-iT'),
              //   WidgetSpan(child: Icon(Icons.create))
              // ]))
              Text(
            'Give-iT',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        )
      ],
    );
  }
}
