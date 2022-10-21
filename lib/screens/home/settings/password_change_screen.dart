import 'package:flutter/material.dart';
import 'package:lettutor/config/theme.dart';
import 'package:lettutor/models/tutor.dart';
import 'package:lettutor/widgets/app_bar.dart';
import 'package:lettutor/widgets/confirm_password_text_field.dart';
import 'package:lettutor/widgets/email_text_field.dart';
import 'package:lettutor/widgets/name_text_field.dart';
import 'package:lettutor/widgets/password_text_field.dart';
import 'package:lettutor/widgets/submit_button.dart';

class PasswordChangeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppTheme.backgroundColor,
      appBar: ApplicationAppBar(
        title: 'Change password',
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              // fix it by adding TextEditingController() to the controller
              PasswordTextField(controller: TextEditingController()),
              // PasswordTextField(controller: null),
              SizedBox(
                height: 10,
              ),
              PasswordTextField(
                controller: TextEditingController(),
                title: 'New password',
              ),
              SizedBox(
                height: 10,
              ),
              ConfirmPasswordTextField(
                  passwordController: TextEditingController(),
                  confirmPasswordController: TextEditingController()),
              SizedBox(
                height: 30,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: SubmitButton(
                      text: 'Save', function: () {}, icon: Icon(Icons.save)))
            ],
          ),
        ),
      ),
    );
  }
}
