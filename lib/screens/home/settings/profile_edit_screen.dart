import 'package:flutter/material.dart';
import 'package:lettutor/config/theme.dart';
import 'package:lettutor/models/tutor.dart';
import 'package:lettutor/widgets/app_bar.dart';
import 'package:lettutor/widgets/email_text_field.dart';
import 'package:lettutor/widgets/name_text_field.dart';
import 'package:lettutor/widgets/password_text_field.dart';
import 'package:lettutor/widgets/submit_button.dart';

class ProfileEditScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppTheme.backgroundColor,
      appBar: ApplicationAppBar(
        title: 'Edit profile',
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Stack(
                  children: <Widget>[
                    ClipOval(
                      child: Image.asset(
                        Tutor.data3.avatar,
                        width: 125,
                      ),
                    ),
                    Positioned(
                        top: 15,
                        right: 0,
                        child: Container(
                          width: 30,
                          height: 30,
                          child: Icon(
                            Icons.edit,
                            size: 15,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              NameTextField(controller: TextEditingController()),
              SizedBox(
                height: 10,
              ),
              EmailTextField(controller: TextEditingController()),
              SizedBox(
                height: 10,
              ),
              PasswordTextField(controller: TextEditingController()),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: SubmitButton(
                    text: 'Save', function: () {}, icon: Icon(Icons.save)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
