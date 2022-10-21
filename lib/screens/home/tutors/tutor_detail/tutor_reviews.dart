import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:lettutor/config/theme.dart';
import 'package:lettutor/models/tutor.dart';

class TutorReviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Reviews',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          SizedBox(
            height: 10,
          ),
          Column(
            children: <Widget>[
              RatingComment(),
              SizedBox(height: 15),
              RatingComment(),
              SizedBox(height: 15),
              RatingComment(),
              SizedBox(height: 15),
              RatingComment(),
              SizedBox(height: 15),
              RatingComment(),
              SizedBox(height: 15),
            ],
          ),
        ],
      ),
    );
  }
}

class RatingComment extends StatelessWidget {
  const RatingComment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
          Container(
              child: Row(
            children: <Widget>[
              ClipOval(
                child: Image.asset(
                  Tutor.data.avatar,
                  width: 30.0,
                  height: 30.0,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      Text(
                        Tutor.data.name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '16 days ago',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, color: Colors.grey),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '${Tutor.data.rating}',
                        style: TextStyle(color: Colors.amber),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 100,
                        child: RatingBar.builder(
                          initialRating: Tutor.data.rating,
                          ignoreGestures: true,
                          itemSize: 15,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          )),
          Text(
            'This is an excellent teacher. He is very talented and kind',
            style: TextStyle(color: AppTheme.textColor),
          )
        ],
      ),
    );
  }
}
