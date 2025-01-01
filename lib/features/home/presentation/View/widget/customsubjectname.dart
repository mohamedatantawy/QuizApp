import 'package:firstproject/features/Addmaterial/data/model/qustion.dart';
import 'package:firstproject/features/addSubject/data/model/nameboxmodel.dart';
import 'package:firstproject/features/home/presentation/View/widget/subjectofhomeview.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class customsubjectname extends StatelessWidget {
  const customsubjectname({
    super.key, required this.nameboxmodel,
  });
 final Nameboxmodel nameboxmodel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
      height: 150,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.blue[800],
      ),
      child:  subjectofhomeview(nameboxmodel: nameboxmodel,),
    );
  }
}
