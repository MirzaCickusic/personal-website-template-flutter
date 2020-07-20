import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:web_site/constanst/app_colors.dart';
import 'package:web_site/constanst/resume_pdf.dart';


class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;

  const NavBarItem(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //locator<NavigationService>().navigatorTo(navigationPath);

          js.context.callMethod("open",
              [resumePDF]);
      },
      child: Text(
        title,
        style: TextStyle(fontSize: 21, color: navBarTextColor,fontFamily: 'Inconsolata',fontWeight: FontWeight.w700),
      ),
    );
  }
}
