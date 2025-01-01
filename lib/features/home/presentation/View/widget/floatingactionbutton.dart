import 'package:firstproject/core/utils/functions/Gorouter.dart';
import 'package:flutter/material.dart';

class floatingactionbutton extends StatelessWidget {
  const floatingactionbutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.blueAccent),
      child: IconButton(
        onPressed: () {
          Gorouter.router.push(Gorouter.kaddsubject);
        },
        icon: const Icon(Icons.add),
      ),
    );
  }
}
