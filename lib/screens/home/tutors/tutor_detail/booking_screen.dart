import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:lettutor/config/theme.dart';
import 'package:lettutor/models/tutor.dart';
import 'package:lettutor/widgets/app_bar.dart';
import 'package:lettutor/widgets/submit_button.dart';

class BookingScreen extends StatelessWidget {
  final Tutor tutor;
  final String time;
  BookingScreen({required this.tutor, required this.time});

  @override
  Widget build(BuildContext context) {
    final titleTextStyle = TextStyle(
        color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold);
    final contentTextStyle = TextStyle(color: AppTheme.textColor, fontSize: 12);
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: ApplicationAppBar(
        title: 'Book a class',
      ),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    height: 110,
                    child: Row(
                      children: <Widget>[
                        ClipOval(
                          child: Image.asset(
                            tutor.avatar,
                            width: 100.0,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              tutor.name,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Text(
                                  '${tutor.rating}',
                                  style: TextStyle(color: Colors.amber),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  width: 90,
                                  child: RatingBar.builder(
                                    initialRating: tutor.rating,
                                    ignoreGestures: true,
                                    itemSize: 15,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemPadding:
                                        EdgeInsets.symmetric(horizontal: 1.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                ),
                                Text(
                                  '(11)',
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Image.asset(
                                  'assets/national_flags/${tutor.countryCode}.png',
                                  height: 25,
                                  width: 30,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(tutor.countryName,
                                    style: TextStyle(fontSize: 14))
                              ],
                            ),
                          ],
                        ),
                      ],
                    )),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Booking time',
                  style: titleTextStyle,
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    '15:00 - 17:00, Monday 11/10/2021',
                    style: contentTextStyle,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text('Balance', style: titleTextStyle),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    '17 lessons left',
                    style: contentTextStyle,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text('Price', style: titleTextStyle),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    '1 lesson',
                    style: contentTextStyle,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SubmitButton(
                    text: 'Book', function: () {}, icon: Icon(Icons.save)),
                SizedBox(
                  height: 10,
                ),
                SubmitButton(
                  text: 'Cancel',
                  function: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.cancel),
                  backgroundColor: Colors.white,
                  textColor: AppTheme.mainColor,
                ),
              ])),
    );
  }
}
