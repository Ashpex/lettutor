import 'package:flutter/material.dart';
import 'package:lettutor/config/theme.dart';
import 'package:lettutor/config/utility.dart';

class ApplicationAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  ApplicationAppBar({required this.title});
  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: AppTheme.mainColor,
            ),
            onPressed: () {
              Utility.hideKeyboard(context);
              Navigator.pop(context);
            }),
        backgroundColor: AppTheme.backgroundColor,
        elevation: 3,
        centerTitle: true,
        title: Text(
          title,
          style: TextStyle(color: Colors.black, fontSize: 18),
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
