import 'package:flutter/material.dart';

class AppBackground extends StatelessWidget {
  const AppBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, contraint) {
      final height = contraint.maxHeight;
      final width = contraint.maxWidth;

      return Stack(
        children: <Widget>[
          Container(
            color: const Color(0xffffffff),
          ),
          Positioned(
            top: -height * 0.5,
            left: width * 0.5,
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blueGrey.withOpacity(0.05)),
            ),
          ),
          Positioned(
            top: -height * 0.625,
            left: -width * 0.5,
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.yellow.withOpacity(0.05)),
            ),
          ),
          Positioned(
            top: height * 0,
            left: -width * 0.5,
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.greenAccent.withOpacity(0.05)),
            ),
          ),
          Positioned(
            top: height * 0.5,
            left: width * 0.75,
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.indigo.withOpacity(0.025)),
            ),
          ),
          Positioned(
            top: height * 0.25,
            left: width * 0.125,
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.blue.withOpacity(0.05)),
            ),
          ),
          Positioned(
            top: height * 0.625,
            left: -width * 0.5,
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.pink.withOpacity(0.05)),
            ),
          )
        ],
      );
    });
  }
}
