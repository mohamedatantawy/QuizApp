
import 'package:flutter/material.dart';

class customappBar extends StatelessWidget {
  const customappBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue,
      centerTitle: true,
      title: const Text(
        'Quiz App',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
