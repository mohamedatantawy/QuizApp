import 'package:firstproject/features/addAndShowsubject/presentation/mange/addboxcubit/addbox_cubit.dart';
import 'package:firstproject/features/addSubject/presentation/mange/cubit/savenamecubit/savenamebox_cubit.dart';
import 'package:firstproject/features/home/presentation/View/widget/ListViewofsubject.dart';
import 'package:firstproject/features/home/presentation/View/widget/subjectofhomeview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Homeviewbody extends StatefulWidget {
  const Homeviewbody({super.key});

  @override
  State<Homeviewbody> createState() => _HomeviewbodyState();
}

class _HomeviewbodyState extends State<Homeviewbody> {
  @override
  void initState() {
    // TODO: implement initState

    BlocProvider.of<SavenameboxCubit>(context).shownamebox();
    BlocProvider.of<AddboxCubit>(context).savebox();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Listviewofsubject();
  }
}
