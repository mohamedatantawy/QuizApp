import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class customAnswer extends StatelessWidget {
  const customAnswer({super.key, required this.answer});
  final String answer;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      //height: 150,
      padding: const EdgeInsets.all(12),
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.blue[800],
      ),
      child: Center(
        child: Text(
          answer,
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
