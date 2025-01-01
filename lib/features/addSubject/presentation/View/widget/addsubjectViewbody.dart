import 'package:firstproject/core/constant/constant.dart';
import 'package:firstproject/core/widget/customtextformfield.dart';
import 'package:firstproject/features/addSubject/presentation/View/widget/ListViewofaddsubject.dart';
import 'package:flutter/material.dart';

class Addsubjectviewbody extends StatelessWidget {
  const Addsubjectviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: customListView(),
    );
  }
}
