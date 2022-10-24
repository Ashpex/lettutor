import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lettutor/config/theme.dart';

final String _facebookIconPath = 'assets/images/facebook_icon.svg';
final String _googleIconPath = 'assets/images/google_icon.svg';
final String _logoPath = 'assets/icons/logo_app.svg';
final String _chatIconPath = 'assets/icons/chat.svg';
final String _favoriteIconPath = 'assets/icons/favorite.svg';
final String _languageIconPath = 'assets/icons/language.svg';
final String _listIconPath = 'assets/icons/view-list.svg';
final String _starBoxIconPath = 'assets/icons/star-box-multiple.svg';
final String _suitcaseIconPath = 'assets/icons/suitcase.svg';

class AppIcons {
  static final Widget appLogo =
      SvgPicture.asset(_logoPath, width: 40, height: 30);
  static final Widget facebookIcon = SvgPicture.asset(_facebookIconPath);
  static final Widget googleIcon = SvgPicture.asset(_googleIconPath);
  static final Widget chatIcon =
      SvgPicture.asset(_chatIconPath, color: AppTheme.mainColor, width: 20);
  static final Widget favoriteIcon =
      SvgPicture.asset(_favoriteIconPath, color: AppTheme.mainColor);

  static final Widget languageIcon = SvgPicture.asset(_languageIconPath);
  static final Widget listIcon = SvgPicture.asset(_listIconPath);
  static final Widget starBoxIcon = SvgPicture.asset(_starBoxIconPath);
  static final Widget suitCaseIcon = SvgPicture.asset(_suitcaseIconPath);
}
