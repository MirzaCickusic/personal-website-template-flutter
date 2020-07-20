import 'package:flutter/material.dart';
import 'package:web_site/routing/route_names.dart';
import 'package:web_site/views/home/homeView.dart';
import 'package:web_site/views/projects/projects_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView());
    case ProjectsRoute:
      return _getPageRoute(ProjectsView());
//    case ResumeRoute:
//      return _getPageRoute(ResumeView());
//    default:
  }
}

PageRoute _getPageRoute(Widget child) {
  return _FadeRoute(child: child);
}

class _FadeRoute extends PageRouteBuilder{
  final Widget child;
  _FadeRoute({this.child}) :
  super(
    pageBuilder: (
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) => child,
  transitionsBuilder: (
    BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  Widget child,
  ) =>
  FadeTransition(opacity: animation, child: child,));
}
