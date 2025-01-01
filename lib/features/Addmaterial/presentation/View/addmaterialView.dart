import 'package:firstproject/core/constant/constant.dart';
import 'package:firstproject/core/widget/customappbar.dart';
import 'package:firstproject/features/Addmaterial/presentation/View/widget/addmaterialViewbody.dart';
import 'package:firstproject/features/addSubject/data/model/nameboxmodel.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Addmaterialview extends StatelessWidget {
  const Addmaterialview({super.key});

  @override
  Widget build(BuildContext context) {
   final String namebox= GoRouterState.of(context).extra as String;
    return  Scaffold(
      backgroundColor: ksecoundcolor,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: customappBar(),
      ),
      body:  Addmaterialviewbody(
        namebox: namebox,
      ),
    );
  }
}
