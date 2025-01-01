import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class questionA extends StatelessWidget {
  const questionA({
    super.key,
    required this.question,
  });
  final String question;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
      //height: 150,
      padding: EdgeInsets.all(12),
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.blue[800],
      ),
      child: Center(
        child: Text(
          question,
          style: const TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
