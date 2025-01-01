import 'package:firstproject/core/constant/constant.dart';
import 'package:flutter/material.dart';

class Customelevaterbutton extends StatelessWidget {
  const Customelevaterbutton(
      {super.key, required this.onpressed, required this.child});
  final VoidCallback onpressed;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 60,
        width: 300,
        child: ElevatedButton(
          onPressed: onpressed,
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: kprimarycolor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9),
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
