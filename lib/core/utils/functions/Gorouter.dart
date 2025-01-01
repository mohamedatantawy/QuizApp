import 'package:firstproject/features/Addmaterial/presentation/View/addmaterialView.dart';
import 'package:firstproject/features/addAndShowsubject/presentation/View/Addandshowsubject.dart';
import 'package:firstproject/features/addSubject/presentation/View/AddSubjectView.dart';
import 'package:firstproject/features/home/presentation/View/Homeview.dart';
import 'package:firstproject/features/showquestion/presentation/view/showquestion.dart';
import 'package:go_router/go_router.dart';

abstract class Gorouter {
  static const kaddsubject = '/addsubject';
  static const kanddandshowsubject = '/addanshowsubject';
    static const kanddmaterial = '/addmaterial';
     static const kshowmaterial = '/showmaterial';

  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Homeview(),
    ),
     GoRoute(
      path: kaddsubject,
      builder: (context, state) => const Addsubjectview(),
    ),
 GoRoute(
      path: kanddandshowsubject,
      builder: (context, state) => const Addandshowsubject(),
    ),
GoRoute(
      path:kanddmaterial,
      builder: (context, state) => const Addmaterialview(),
    ),
     GoRoute(
       path:kshowmaterial,
       builder: (context, state) => const Showquestions(),
     ),
  ]);
}
