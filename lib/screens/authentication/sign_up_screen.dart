import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lettutor/config/theme.dart';
import 'package:lettutor/config/utility.dart';
import 'package:lettutor/widgets/app_bar.dart';
import 'package:lettutor/widgets/confirm_password_text_field.dart';
import 'package:lettutor/widgets/email_text_field.dart';
import 'package:lettutor/widgets/icons.dart';
import 'package:lettutor/widgets/submit_button.dart';
import 'package:lettutor/widgets/password_text_field.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = new TextEditingController();
    final TextEditingController _passwordController =
        new TextEditingController();
    final TextEditingController _confirmPasswordController =
        new TextEditingController();

    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      onPrimary: AppTheme.mainColor,
      primary: Colors.white,
      minimumSize: Size(100, 30),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
    );

    Widget signUpPicture = Container(
      height: 200,
      width: 200,
      child: SvgPicture.asset(
        'assets/icons/signup.svg',
        fit: BoxFit.cover,
      ),
    );

    Widget facebookSignUpButton = ElevatedButton(
      style: raisedButtonStyle,
      onPressed: () {},
      child: Container(
        padding: EdgeInsets.all(8),
        child: Row(
          children: <Widget>[
            AppIcons.facebookIcon,
            SizedBox(
              width: 5,
            ),
            Text(
              'Facebook',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
    Widget googleSignUpButton = ElevatedButton(
      style: raisedButtonStyle,
      onPressed: () {},
      child: Container(
        padding: EdgeInsets.all(8),
        child: Row(
          children: <Widget>[
            AppIcons.googleIcon,
            SizedBox(
              width: 5,
            ),
            Text(
              'Google',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: ApplicationAppBar(
        title: 'Sign Up',
      ),
      backgroundColor: AppTheme.backgroundColor,
      body: Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: <Widget>[
            signUpPicture,
            EmailTextField(
              controller: _emailController,
            ),
            SizedBox(
              height: 10,
            ),
            PasswordTextField(
              controller: _passwordController,
            ),
            SizedBox(
              height: 10,
            ),
            ConfirmPasswordTextField(
              passwordController: _passwordController,
              confirmPasswordController: _confirmPasswordController,
            ),
            SizedBox(
              height: 30,
            ),
            SubmitButton(
                text: 'Sign Up',
                function: () {
                  // Utility.hideKeyboard(context);
                },
                icon: Icon(Icons.send)),
            SizedBox(
              height: 20,
            ),
            Container(
                padding: EdgeInsets.all(5),
                alignment: Alignment.center,
                child: Text('Or continue with',
                    style: TextStyle(color: Colors.grey, fontSize: 12))),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                facebookSignUpButton,
                SizedBox(
                  width: 10,
                ),
                googleSignUpButton
              ],
            ),
          ],
        ),
      ),
    );
  }
}
