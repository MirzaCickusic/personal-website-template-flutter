import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_site/constanst/app_colors.dart';
import 'package:web_site/constanst/app_text.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var textAlignment =
            sizingInformation.deviceScreenType == DeviceScreenType.Desktop
                ? TextAlign.left
                : TextAlign.start;
        double titleSize =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? 50
                : 80;
        double descriptionSize =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? 18
                : 21;

        return Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                welcomeHeroText,
                style: TextStyle(
                  color: heroTextColor,
                  fontFamily: 'Jura',
                  fontWeight: FontWeight.w200,
                  height: 0.9,
                  fontSize: titleSize,
                ),
                textAlign: textAlignment,
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Container(
                    height: 200,
                    width: 2,
                    decoration: BoxDecoration(
                      gradient: colorfulLine
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 580,
                    child: Column(
                      children: [
                        Text(
                          welcomeScreenTextFirstParagraph,
                          maxLines: 4,
                          style: TextStyle(
                              color: heroTextColor,
                              fontSize: descriptionSize,
                              height: 1.3,
                              fontFamily: 'Inconsolata',
                              fontWeight: FontWeight.w500),
                          textAlign: textAlignment,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          welcomeScreenTextSecondParagraph,
                          maxLines: 4,
                          style: TextStyle(
                              color: heroTextColor,
                              fontSize: descriptionSize,
                              height: 1.3,
                              fontFamily: 'Inconsolata',
                              fontWeight: FontWeight.w500),
                          textAlign: textAlignment,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
