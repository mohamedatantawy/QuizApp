import 'package:firstproject/features/Addmaterial/data/model/qustion.dart';
import 'package:firstproject/features/addSubject/data/model/nameboxmodel.dart';
import 'package:firstproject/features/addAndShowsubject/presentation/mange/addboxcubit/addbox_cubit.dart';
import 'package:firstproject/features/addSubject/presentation/mange/cubit/savenamecubit/savenamebox_cubit.dart';
import 'package:firstproject/features/home/presentation/View/widget/customsubjectname.dart';
import 'package:firstproject/features/home/presentation/View/widget/subjectofhomeview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Listviewofsubject extends StatelessWidget {
  const Listviewofsubject({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddboxCubit, AddboxState>(
      builder: (context, state) {
        List<Box<QustionAndanswer>> box=  BlocProvider.of<AddboxCubit>(context).savebox();
         List<Nameboxmodel> boxs=  BlocProvider.of<SavenameboxCubit>(context).shownamebox();
        return ListView.builder(
            itemCount: boxs.length,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return customsubjectname(
                nameboxmodel: boxs[index],
              );
            });
      },
    );
  }
}