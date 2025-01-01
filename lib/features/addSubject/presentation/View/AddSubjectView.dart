import 'package:firstproject/features/addSubject/presentation/View/widget/addsubjectViewbody.dart';
import 'package:flutter/material.dart';

class Addsubjectview extends StatelessWidget {
  const Addsubjectview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
       
        title: const Text(
          'Quiz App',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body:const Addsubjectviewbody() ,
    );
  }
}