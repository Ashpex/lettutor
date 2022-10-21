import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:lettutor/models/tutor.dart';
import 'package:lettutor/screens/home/tutors/tutor_detail/booking_screen.dart';
import 'package:lettutor/widgets/app_bar.dart';

class TutorCalendarScreen extends StatelessWidget {
  final Tutor tutor;
  TutorCalendarScreen({required this.tutor});
  @override
  Widget build(BuildContext context) {
    _buildTimeFrame(String hour) {
      return GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => BookingScreen(
                      tutor: tutor,
                      time: '15:00 - 17:00, Monday 11/10/2021',
                    )));
          },
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 45, right: 45),
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                border:
                    Border(bottom: BorderSide(width: 1, color: Colors.grey))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  hour,
                ),
                Icon(Icons.keyboard_arrow_right)
              ],
            ),
          ));
    }

    _buildDateCalendar(String date) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 1),
        child: ExpandablePanel(
          theme: const ExpandableThemeData(
            headerAlignment: ExpandablePanelHeaderAlignment.center,
            tapBodyToExpand: true,
            tapBodyToCollapse: true,
            hasIcon: false,
          ),
          header: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 25),
            height: 40,
            width: double.infinity,
            child: Text(
              date,
              style: TextStyle(color: Colors.white),
            ),
            color: Color(0xff3269A5),
          ),
          expanded: Column(
            children: [
              _buildTimeFrame('15:00 - 17:00'),
              _buildTimeFrame('17:00 - 19:00'),
              _buildTimeFrame('19:00 - 21:00'),
              _buildTimeFrame('21:00 - 23:00'),
            ],
          ),
          collapsed: Container(),
        ),
      );
    }

    return Scaffold(
      appBar: ApplicationAppBar(
        title: 'Calendar',
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              _buildDateCalendar('Monday, 11/10/2021'),
              _buildDateCalendar('Tuesday, 12/10/2021'),
              _buildDateCalendar('Thursday, 14/10/2021'),
              _buildDateCalendar('Friday, 15/10/2021'),
              _buildDateCalendar('Sunday, 16/10/2021'),
            ],
          ),
        ),
      ),
    );
  }
}
