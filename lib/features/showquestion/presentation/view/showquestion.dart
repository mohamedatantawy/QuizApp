import 'package:firstproject/core/constant/constant.dart';
import 'package:firstproject/core/utils/functions/Gorouter.dart';
import 'package:firstproject/core/widget/customappbar.dart';
import 'package:firstproject/features/showquestion/presentation/view/widget/ShowQuestionbody.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class Showquestions extends StatelessWidget {
  const Showquestions({super.key});

  @override
  Widget build(BuildContext context) {
    final String namebox = GoRouterState.of(context).extra as String;

    return Scaffold(
      backgroundColor: ksecoundcolor,
      appBar: const PreferredSize(
        child: customappBar(),
        preferredSize: Size.fromHeight(60),
      ),
      body: Showquestionbody(
        namebox: namebox,
      ),
    );

  }
}
