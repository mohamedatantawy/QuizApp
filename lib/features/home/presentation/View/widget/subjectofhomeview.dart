import 'package:firstproject/core/utils/functions/Gorouter.dart';
import 'package:firstproject/features/Addmaterial/data/model/qustion.dart';
import 'package:firstproject/features/addSubject/data/model/nameboxmodel.dart';
import 'package:firstproject/features/addSubject/presentation/mange/cubit/savenamecubit/savenamebox_cubit.dart';
import 'package:firstproject/features/home/presentation/mange/cubit/deletebox_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

class subjectofhomeview extends StatefulWidget {
  const subjectofhomeview({
    super.key,
    required this.nameboxmodel,
  });
  final Nameboxmodel nameboxmodel;

  @override
  State<subjectofhomeview> createState() => _subjectofhomeviewState();
}

class _subjectofhomeviewState extends State<subjectofhomeview> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                widget.nameboxmodel.namebox,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              IconButton(
                  onPressed: () {
                    widget.nameboxmodel.delete();
                    // BlocProvider.of<DeleteboxCubit>(context)
                    //  .deletebox(widget.nameboxmodel.namebox);
                    setState(() {});
                //BlocProvider.of<SavenameboxCubit>(context).shownamebox();
                    
                  },
                  icon: Icon(
                    Icons.delete,
                    color: Colors.white,
                  ))
            ],
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                Gorouter.router.push(Gorouter.kanddandshowsubject,
                    extra: widget.nameboxmodel);
              },
              child: const Text(
                'Go Strat',
                style: TextStyle(fontSize: 18),
              ))
        ],
      ),
    );
  }
}
