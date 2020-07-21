import 'dart:js' as js;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:web_site/constanst/app_colors.dart';
import 'package:web_site/constanst/app_text.dart';
import 'package:web_site/constanst/social_media_links.dart';

class HomeContentMobile extends StatelessWidget {
  final String title;
  final TextStyle textStyle;

  const HomeContentMobile({Key key, this.title, this.textStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            Text(
              welcomeHeroText,
              style: TextStyle(
                color: heroTextColor,
                fontSize: 50,
                fontFamily: 'Jura',
                fontWeight: FontWeight.w200,
                height: 0.9,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Container(
                  height: 300,
                  width: 2,
                    decoration: BoxDecoration(
                      gradient: colorfulLine
                    ),
                  ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  flex: 9,
                  child: Column(
                      children: [
                        Text(
                          welcomeScreenTextFirstParagraph,
                          style: TextStyle(
                              color: heroTextColor,
                              height: 1.3,
                              fontFamily: 'Inconsolata',
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          welcomeScreenTextSecondParagraph,
                          style: TextStyle(
                              color: heroTextColor,
                              height: 1.3,
                              fontSize: 18,
                              fontFamily: 'Inconsolata',
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "\n"),
                    TextSpan(
                      text: "Connect with me on: ",
                      style: TextStyle(
                          color: heroTextColor,
                          height: 1.2,
                          fontSize: 20,
                          fontFamily: 'Inconsolata',
                          fontWeight: FontWeight.w600),
                    ),
                    TextSpan(text: "\n"),
                    TextSpan(
                      text: "\nGitHub",
                      style: TextStyle(
                          color: Colors.orange,
                          height: 3,
                          letterSpacing: 1,
                          decoration: TextDecoration.underline,
                          fontSize: 18,
                          fontFamily: 'Inconsolata',
                          fontWeight: FontWeight.w700),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          js.context.callMethod(
                            "open",
                            [
                              gitHub,
                            ],
                          );
                        },
                    ),
                    TextSpan(text: "\n"),
                    TextSpan(
                      text: "\nLinkedIn",
                      style: TextStyle(
                          color: Colors.orange,
                          height: 3,
                          letterSpacing: 1,
                          decoration: TextDecoration.underline,
                          fontSize: 18,
                          fontFamily: 'Inconsolata',
                          fontWeight: FontWeight.w700),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          js.context.callMethod(
                            "open",
                            [
                              linkedIn,
                            ],
                          );
                        },
                    ),
                    TextSpan(text: "\n"),
                    TextSpan(
                      text: "\nInstagram",
                      style: TextStyle(
                          color: Colors.orange,
                          height: 3,
                          fontSize: 18,
                          letterSpacing: 1,
                          decoration: TextDecoration.underline,
                          fontFamily: 'Inconsolata',
                          fontWeight: FontWeight.w700),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          js.context.callMethod(
                            "open",
                            [
                              instagram,
                            ],
                          );
                        },
                    ),
                    TextSpan(text: "\n"),
                    TextSpan(
                      text: "\nYouTube",
                      style: TextStyle(
                          color: Colors.orange,
                          height: 10,
                          fontSize: 18,
                          letterSpacing: 1,
                          decoration: TextDecoration.underline,
                          fontFamily: 'Inconsolata',
                          fontWeight: FontWeight.w700),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          js.context.callMethod(
                            "open",
                            [
                              youtube,
                            ],
                          );
                        },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              "My email is " + myEmail,
              style: TextStyle(
                  color: heroTextColor,
                  height: 1.5,
                  fontSize: 18,
                  fontFamily: 'Inconsolata',
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
