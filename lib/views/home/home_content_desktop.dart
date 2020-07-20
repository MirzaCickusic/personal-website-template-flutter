import 'package:flutter/material.dart';
import 'package:web_site/widgets/social_media_representation/social_media.dart';
import 'package:web_site/widgets/hero_text/hero_text.dart';

class HomeContentDesktop extends StatelessWidget {
  final String title;

  const HomeContentDesktop({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        WelcomeText(),
        Expanded(
          child: Center(
            child: SocialMedia(title),
          ),
        ),
      ],
    );
  }
}
