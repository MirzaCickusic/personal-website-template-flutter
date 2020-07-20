import 'package:flutter/material.dart';
import 'package:web_site/routing/route_names.dart';

import 'nav_bar_item.dart';
import 'navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              //NavBarItem('projects', ProjectsRoute),
              SizedBox(
                width: 60,
              ),
              NavBarItem('resume', ResumeRoute),
            ],
          )
        ],
      ),
    );
  }
}
