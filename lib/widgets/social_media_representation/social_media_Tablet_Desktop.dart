import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:web_site/constanst/app_colors.dart';
import 'package:web_site/constanst/images.dart';
import 'package:web_site/constanst/social_media_links.dart';

class SocialMediaTabletDesktop extends StatelessWidget {

  const SocialMediaTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: 600,
      color: backGroundColor,
      child: Stack(
        children: [
          Positioned(
            top: 170,
            left: 270,
            child: GestureDetector(
                onTap: () {
                  js.context.callMethod("open", [
                    linkedIn,
                  ]);
                },
                child: new Image.asset(linkedInImage, width: 50)),
          ),
          Positioned(
            top: 380,
            left: 270,
            child: GestureDetector(
                onTap: () {
                  js.context.callMethod("open", [
                    instagram,
                  ]);
                },
                child: new Image.asset(instagramImage, width: 50)),
          ),
          Positioned(
            left: 320,
            top: 20,
            child: GestureDetector(
                onTap: () {
                  js.context.callMethod("open", [
                    gitHub,
                  ]);
                },
                child: new Image.asset(gitHubImage, width: 50)),
          ),
          Positioned(
            bottom: 20,
            left: 320,
            child: GestureDetector(
                onTap: () {
                  js.context.callMethod("open", [
                    youtube,
                  ]);
                },
                child: new Image.asset(youTubeImage, width: 50)),
          ),
          Positioned(
            bottom: 50,
            right: 0,
            child: Container(
              width: 270,
              height: 500,
              child: CustomPaint(
                painter: ShapePainter(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ShapePainter extends CustomPainter {
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 50.0
      ..color = circleColor;

    final line = Paint()
      ..strokeWidth = 0.5
      ..color = lineColor;

    canvas.drawCircle(Offset(size.width - 50.0, 260.0), 25, paint);
    canvas.drawLine(Offset(size.width - 220, size.height - 450), Offset(180, 180), line);
    canvas.drawLine(Offset(2, size.height - 340), Offset(130, 230), line);
    canvas.drawLine(Offset(2, size.height - 150), Offset(130, 290), line);
    canvas.drawLine(Offset(size.width - 220, size.height - 40), Offset(180, 340), line);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
