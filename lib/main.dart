import 'package:firstproject/core/utils/functions/Gorouter.dart';
import 'package:firstproject/features/Addmaterial/presentation/mange/addmaterial/add_material_cubit.dart';
import 'package:firstproject/features/home/presentation/View/Homeview.dart';
import 'package:firstproject/features/addSubject/data/model/nameboxmodel.dart';
import 'package:firstproject/features/addAndShowsubject/presentation/mange/addboxcubit/addbox_cubit.dart';
import 'package:firstproject/features/addSubject/presentation/mange/cubit/savenamecubit/savenamebox_cubit.dart';
import 'package:firstproject/features/Addmaterial/data/mange/cubit/cubit/showquiz_cubit.dart';
import 'package:firstproject/features/Addmaterial/data/mange/cubit/quizapp_cubit.dart';
import 'package:firstproject/features/Addmaterial/data/model/qustion.dart';
import 'package:firstproject/features/home/presentation/mange/cubit/deletebox_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(QustionAndanswerAdapter());
  Hive.registerAdapter(NameboxmodelAdapter());
  await Hive.openBox<Nameboxmodel>('namebox');
  await Hive.openBox<Box<QustionAndanswer>>('save');
  // await Hive.openBox<QustionAndanswer>('qustion11');
  runApp(const Quiz());
}

class Quiz extends StatelessWidget {
  const Quiz({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => QuizappCubit(),
        ),
         BlocProvider(
          create: (context) => DeleteboxCubit(),
        ),
        BlocProvider(
          create: (context) => AddMaterialCubit(),
        ),
        BlocProvider(
          create: (context) => AddboxCubit(),
        ),
        BlocProvider(
          create: (context) => SavenameboxCubit(),
        ),
        BlocProvider(
          create: (context) => ShowquizCubit(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: Gorouter.router,
      ),
    );
  }
}
