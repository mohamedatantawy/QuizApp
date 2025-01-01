import 'package:firstproject/features/home/presentation/View/widget/floatingactionbutton.dart';
import 'package:firstproject/features/home/presentation/View/widget/homeViewbody.dart';
import 'package:flutter/material.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        // actions: [
        //   IconButton(
        //       onPressed: () {
        //         Navigator.push(context, MaterialPageRoute(builder: (context) {
        //           return Showqustion();
        //         }));
        //       },
        //       icon: Icon(Icons.open_in_browser))
        // ],
        title: const Text(
          'Quiz App',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: const Homeviewbody(),
      floatingActionButton: const floatingactionbutton(),
    );
  }
}
