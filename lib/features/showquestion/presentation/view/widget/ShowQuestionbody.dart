import 'package:firstproject/core/widget/customElevaterbutton.dart';
import 'package:firstproject/features/Addmaterial/data/mange/cubit/cubit/showquiz_cubit.dart';
import 'package:firstproject/features/Addmaterial/data/model/qustion.dart';
import 'package:firstproject/features/showquestion/presentation/view/widget/columofShow.dart';
import 'package:firstproject/features/showquestion/presentation/view/widget/customanswer.dart';
import 'package:firstproject/features/showquestion/presentation/view/widget/customquestion.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Showquestionbody extends StatefulWidget {
  const Showquestionbody({super.key, required this.namebox});
  final String namebox;

  @override
  State<Showquestionbody> createState() => _ShowquestionbodyState();
}

class _ShowquestionbodyState extends State<Showquestionbody> {
  bool isloading = false;
  List<QustionAndanswer> ss = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<ShowquizCubit>(context).showquiz(widget.namebox);
  }

  int isactive = -1;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShowquizCubit, ShowquizState>(
      builder: (context, state) {
        ss = BlocProvider.of<ShowquizCubit>(context).out ?? [];
        return PageView.builder(
            itemCount: ss.length,
            
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  questionA(
                    question: ss[index].qustion,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  isactive == index
                      ? customAnswer(answer: ss[index].answer)
                      : Customelevaterbutton(
                          onpressed: () {
                            isactive = index;
                            setState(() {});
                          },
                          child: const Text(
                            'Answer',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),
                        ),
                ],
              );
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 70,
                    width: double.infinity,
                    color: Colors.amber,
                    child: Center(child: Text(ss[index].qustion.toString())),
                  ),
                  isactive == index
                      ? Container(
                          height: 70,
                          width: double.infinity,
                          color: Colors.red,
                          child:
                              Center(child: Text(ss[index].answer.toString())),
                        )
                      : ElevatedButton(
                          onPressed: () {
                            isactive = index;
                            setState(() {});
                          },
                          child: Text('Answeer'))
                ],
              );
            });
      },
    );
  }
}
