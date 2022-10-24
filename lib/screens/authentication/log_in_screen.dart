import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lettutor/config/theme.dart';
import 'package:lettutor/config/utility.dart';
import 'package:lettutor/screens/authentication/forget_password_screen.dart';
import 'package:lettutor/screens/home/home_screen.dart';
import 'package:lettutor/widgets/app_bar.dart';
import 'package:lettutor/widgets/email_text_field.dart';
import 'package:lettutor/widgets/flat_button.dart';
import 'package:lettutor/widgets/icons.dart';
import 'package:lettutor/widgets/submit_button.dart';
import 'package:lettutor/widgets/password_text_field.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = new TextEditingController();
    final TextEditingController _passwordController =
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

    Widget loginPicture = Container(
      height: 200,
      width: 200,
      child: SvgPicture.asset(
        'assets/icons/login.svg',
        fit: BoxFit.cover,
      ),
    );

    Widget facebookLoginButton = ElevatedButton(
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
    Widget googleLoginButton = ElevatedButton(
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
        title: 'Login',
      ),
      backgroundColor: AppTheme.backgroundColor,
      body: Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: <Widget>[
            loginPicture,
            EmailTextField(controller: _emailController),
            SizedBox(
              height: 10,
            ),
            PasswordTextField(
              controller: _passwordController,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.centerRight,
              child: AppFlatButton(
                  text: 'Forget password?',
                  function: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ForgetPasswordScreen(),
                    ));
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            SubmitButton(
                text: 'Login',
                function: () {
                  Utility.hideKeyboard(context);
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                icon: Icon(Icons.login)),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                facebookLoginButton,
                SizedBox(
                  width: 10,
                ),
                googleLoginButton
              ],
            ),
          ],
        ),
      ),
    );
  }
}
