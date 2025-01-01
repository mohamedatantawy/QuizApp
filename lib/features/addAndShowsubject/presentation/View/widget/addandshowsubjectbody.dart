import 'package:firstproject/core/constant/constant.dart';
import 'package:firstproject/core/utils/functions/Gorouter.dart';
import 'package:firstproject/core/widget/customElevaterbutton.dart';
import 'package:firstproject/features/addAndShowsubject/presentation/mange/addboxcubit/addbox_cubit.dart';
import 'package:firstproject/features/addSubject/data/model/nameboxmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Addandshowsubjectbody extends StatefulWidget {
  const Addandshowsubjectbody({super.key, required this.namebox});
  final String namebox;

  @override
  State<Addandshowsubjectbody> createState() => _AddandshowsubjectbodyState();
}

class _AddandshowsubjectbodyState extends State<Addandshowsubjectbody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<AddboxCubit>(context).openbox(widget.namebox);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 70,
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
          '${widget.namebox}',
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: kprimarycolor,
          ),
        ),
        Divider(
          color: Colors.grey[100],
          endIndent: 40,
          indent: 40,
        ),
        const SizedBox(
          height: 40,
        ),
        Customelevaterbutton(
          onpressed: () {
            //  BlocProvider.of<AddboxCubit>(context).openbox(widget.namebox);
            Gorouter.router.push(Gorouter.kanddmaterial, extra: widget.namebox);
          },
          child: const Text(
            'Add material',
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Customelevaterbutton(
          onpressed: () {
            Gorouter.router.push(Gorouter.kshowmaterial,extra: widget.namebox);
          },
          child: const Text(
            'Show the Test',
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
