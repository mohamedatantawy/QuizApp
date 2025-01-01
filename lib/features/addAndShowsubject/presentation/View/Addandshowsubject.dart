import 'package:firstproject/core/widget/customappbar.dart';
import 'package:firstproject/features/addAndShowsubject/presentation/View/widget/addandshowsubjectbody.dart';
import 'package:firstproject/features/addSubject/data/model/nameboxmodel.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Addandshowsubject extends StatelessWidget {
  const Addandshowsubject({super.key});

  @override
  Widget build(BuildContext context) {
    final Nameboxmodel namebox = GoRouterState.of(context).extra as Nameboxmodel;
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: customappBar(),
      ),
      body: Addandshowsubjectbody(
        namebox: namebox.namebox,
      ),
    );
  }
}
