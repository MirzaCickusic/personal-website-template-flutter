import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_site/constanst/app_colors.dart';
import 'package:web_site/locator.dart';
import 'package:web_site/routing/route_names.dart';
import 'package:web_site/routing/router.dart';
import 'package:web_site/services/navigation_service.dart';
import 'package:web_site/widgets/centered_view/centered_view.dart';
import 'package:web_site/widgets/navigationBar/navigationBar.dart';

class LayoutTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        backgroundColor: backGroundColor,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              NavigationBar(),
              Expanded(
                child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: generateRoute,
                  initialRoute: HomeRoute,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
