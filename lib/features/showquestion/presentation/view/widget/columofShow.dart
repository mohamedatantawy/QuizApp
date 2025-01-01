import 'package:firstproject/core/widget/customElevaterbutton.dart';
import 'package:firstproject/features/Addmaterial/data/model/qustion.dart';
import 'package:firstproject/features/showquestion/presentation/view/widget/customanswer.dart';
import 'package:firstproject/features/showquestion/presentation/view/widget/customquestion.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Columofshow extends StatefulWidget {
  const Columofshow(
      {super.key,
      required this.qustionAndanswer,
      required this.active,
       });
  final QustionAndanswer qustionAndanswer;
  final int active;
  

  @override
  State<Columofshow> createState() => _ColumofshowState();
}

class _ColumofshowState extends State<Columofshow> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        questionA(
          question: widget.qustionAndanswer.qustion,
        ),
        const SizedBox(
          height: 20,
        ),
        // switchanswer(
        //   active: widget.active,
        //   index: widget.index,
        //   answer: widget.qustionAndanswer.answer,
        // )
      ],
    );
  }
}

// class switchanswer extends StatefulWidget {
//   const switchanswer(
//       {super.key,
//       required this.active,
    
//       required this.answer});
//   final int active;
  
//   final String answer;
  
//   @override
//   State<switchanswer> createState() => _switchanswerState();
// }

// class _switchanswerState extends State<switchanswer> {
  
//   @override
//   Widget build(BuildContext context) {
//     return widget.active == index
//         ? customAnswer(answer: widget.answer)
//         : Customelevaterbutton(
//             onpressed: () {},
//             child: Text('Answer'),
//           );
//   }
// }
