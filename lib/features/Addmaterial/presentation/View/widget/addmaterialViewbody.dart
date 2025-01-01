import 'package:firstproject/features/Addmaterial/presentation/View/widget/lsitViewAddmaterial.dart';
import 'package:firstproject/features/addSubject/data/model/nameboxmodel.dart';
import 'package:flutter/material.dart';

class Addmaterialviewbody extends StatelessWidget {
  const Addmaterialviewbody({super.key, required this.namebox});
  final String namebox;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: ListViewAddmaterail(namebox: namebox,),
    );
  }
}
