import 'package:flutter/material.dart';
import 'package:web_site/constanst/images.dart';
import 'package:web_site/routing/route_names.dart';
import 'package:web_site/services/navigation_service.dart';

import '../../locator.dart';

class NavBarLogo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigatorTo(HomeRoute);
      },
          child: new Image.asset(logoImage,width:130),
            );
  }
}
