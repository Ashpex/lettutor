import 'package:flutter/material.dart';
import 'package:lettutor/config/theme.dart';
import 'package:lettutor/models/tutor.dart';
import 'package:lettutor/screens/home/tutors/tutor_list/tutor_filter_widget.dart';
import 'package:lettutor/screens/home/tutors/tutor_list/tutor_item_widget.dart';

class TutorsTab extends StatelessWidget {
  final titleStyle =
      TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 36);

  final List<Tutor> tutorList = [
    Tutor.data,
    Tutor.data1,
    Tutor.data2,
    Tutor.data3
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      color: AppTheme.backgroundColor,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text('Tutors', style: titleStyle),
          ),
          Container(child: TutorFilterWidget()),
          SizedBox(
            height: 15,
          ),
          for (var element in tutorList) ...[
            TutorItemWidget(tutor: element),
            SizedBox(
              height: 15,
            )
          ]
        ],
      ),
    ));
  }
}
