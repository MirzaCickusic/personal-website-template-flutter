import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'social_media_Mobile.dart';
import 'social_media_Tablet_Desktop.dart';

class SocialMedia extends StatelessWidget {
  final String title;
  SocialMedia(this.title);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: SocialMediaMobile(),
      tablet: SocialMediaTabletDesktop(),
    );
  }
}
