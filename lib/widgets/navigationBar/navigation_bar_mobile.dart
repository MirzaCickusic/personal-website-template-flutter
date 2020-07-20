import 'package:flutter/material.dart';
import 'package:web_site/routing/route_names.dart';
import 'package:web_site/widgets/navigationBar/nav_bar_item.dart';
import 'package:web_site/widgets/navigationBar/navbar_logo.dart';

class NavigationBarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarItem('resume', ResumeRoute),
          NavBarLogo(),
        ],
      ),
    );
  }
}
