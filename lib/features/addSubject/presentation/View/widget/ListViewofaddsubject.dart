import 'package:firstproject/core/constant/constant.dart';
import 'package:firstproject/core/utils/functions/Gorouter.dart';
import 'package:firstproject/core/widget/customElevaterbutton.dart';
import 'package:firstproject/core/widget/customtextformfield.dart';
import 'package:firstproject/features/addAndShowsubject/presentation/mange/addboxcubit/addbox_cubit.dart';
import 'package:firstproject/features/addSubject/presentation/mange/cubit/savenamecubit/savenamebox_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class customListView extends StatefulWidget {
  const customListView({
    super.key,
  });

  @override
  State<customListView> createState() => _customListViewState();
}

class _customListViewState extends State<customListView> {
  late String namebox;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 80,
        ),
        const Center(
          child: CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage(
              'asset/image/C88IZyEo7g-1-768x768.webp',
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Text(
          'Enter Name of Subject',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.blue[900]),
        ),
        const SizedBox(
          height: 8,
        ),
        Customtextformfield(
          hint: 'Name of subject',
          submit: (value) {
            namebox = value;
          },
        ),
        const SizedBox(
          height: 40,
        ),

          Customelevaterbutton(onpressed: (){

              BlocProvider.of<AddboxCubit>(context).openbox(namebox);
                BlocProvider.of<SavenameboxCubit>(context).savenamebox(namebox);
                    BlocProvider.of<AddboxCubit>(context).savebox();

                setState(() {});
                Gorouter.router.pop();
          }, child:  const Text(
                'Add Subject',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),),
        // Center(
        //   child: Container(
        //     height: 60,
        //     width: 300,
        //     child: ElevatedButton(
        //       onPressed: () {
        //         BlocProvider.of<AddboxCubit>(context).openbox(namebox);
        //         BlocProvider.of<SavenameboxCubit>(context).savenamebox(namebox);

        //         setState(() {});
        //         Gorouter.router.pop();
        //       },
        //       style: ElevatedButton.styleFrom(
        //         elevation: 0,
        //         backgroundColor: kprimarycolor,
        //         shape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(9),
        //         ),
        //       ),
        //       child: const Text(
        //         'Add Subject',
        //         style: TextStyle(
        //           fontSize: 22,
        //           color: Colors.white,
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
