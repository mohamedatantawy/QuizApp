import 'package:firstproject/core/constant/constant.dart';
import 'package:firstproject/core/utils/functions/Gorouter.dart';
import 'package:firstproject/core/widget/customElevaterbutton.dart';
import 'package:firstproject/core/widget/customtextformfield.dart';
import 'package:firstproject/features/addAndShowsubject/presentation/mange/addboxcubit/addbox_cubit.dart';
import 'package:firstproject/features/Addmaterial/presentation/mange/addmaterial/add_material_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewAddmaterail extends StatefulWidget {
  const ListViewAddmaterail({
    super.key,
    required this.namebox,
  });
  final String namebox;
  @override
  State<ListViewAddmaterail> createState() => _ListViewAddmaterailState();
}

class _ListViewAddmaterailState extends State<ListViewAddmaterail> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  GlobalKey<FormState> keyform = GlobalKey();
   String? question, answer;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: keyform,
      child: ListView(
        children: [
          const SizedBox(
            height: 40,
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
            height: 20,
          ),
          const Text(
            'Enter question',
            style: TextStyle(
              fontSize: 25,
              color: kprimarycolor,
              fontWeight: FontWeight.w500,
            ),
          ),
          Divider(
            color: Colors.grey[400],
            endIndent: 170,
            height: 5,
            // indent: 20,
          ),
          const SizedBox(
            height: 8,
          ),
          Customtextformfield(
            hint: 'Question',
            submit: (value) {
              question = value;
            },
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Enter answer',
            style: TextStyle(
              fontSize: 25,
              color: kprimarycolor,
              fontWeight: FontWeight.w500,
            ),
          ),
          Divider(
            color: Colors.grey[400],
            height: 5,
            endIndent: 190,
            // indent: 20,
          ),
          const SizedBox(
            height: 8,
          ),
          Customtextformfield(
            hint: 'Answer',
            submit: (value) {
              answer = value;
            },
          ),
          const SizedBox(
            height: 50,
          ),
          Customelevaterbutton(
            onpressed: () {
              if (keyform.currentState!.validate()) {
                keyform.currentState!.save();
                
                BlocProvider.of<AddMaterialCubit>(context)
                    .addqustion(question!, answer!, widget.namebox);
                Gorouter.router.pop();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
            child: const Text(
              'Add Material',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
