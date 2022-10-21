import 'package:flutter/material.dart';
import 'package:lettutor/config/theme.dart';
import 'package:lettutor/models/tutor.dart';
import 'package:lettutor/screens/home/schedule/video_conference.dart';
import 'package:lettutor/widgets/outline_button.dart';

class UpcommingLessonItem extends StatelessWidget {
  final Tutor tutor;
  final DateTime startMeeting;
  final DateTime endMeeting;
  final bool upcommingLesson;
  UpcommingLessonItem(
      {required this.tutor,
      required this.startMeeting,
      required this.endMeeting,
      this.upcommingLesson = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.8),
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(0, 3))
          ]),
      child: Column(
        children: <Widget>[
          upcommingLesson
              ? Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                      color: AppTheme.mainColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  height: 35,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Upcomming lesson',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      Text(
                        '9h 37m 11s',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                )
              : SizedBox(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                          flex: 6,
                          child: Container(
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                ClipOval(
                                  child: Image.asset(
                                    tutor.avatar,
                                    fit: BoxFit.cover,
                                    width: 50.0,
                                    height: 50.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: <Widget>[
                                            Expanded(
                                              child: Text(
                                                tutor.name,
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: <Widget>[
                                          Image.asset(
                                            'assets/national_flags/${tutor.countryCode}.png',
                                            height: 15,
                                            width: 20,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(tutor.countryName,
                                              style: TextStyle(fontSize: 11))
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )),
                      Flexible(
                          flex: 3,
                          child: Container(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text('11/10/2021'),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('20:00 - 20:25',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      AppOutlineButton(
                          text: 'Cancel',
                          function: () => {},
                          iconData: Icons.cancel,
                          color: Colors.red),
                      SizedBox(
                        width: 10,
                      ),
                      AppOutlineButton(
                          text: 'Go to meeting',
                          function: () => {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => VideoConference()))
                              },
                          iconData: Icons.video_call_rounded,
                          color: AppTheme.mainColor),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
