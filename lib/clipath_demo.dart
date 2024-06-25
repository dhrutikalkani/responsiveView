import 'package:flutter/material.dart';

class ClipPathDemo extends StatefulWidget {
  const ClipPathDemo({super.key});

  @override
  State<ClipPathDemo> createState() => _ClipPathDemoState();
}

class _ClipPathDemoState extends State<ClipPathDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipPath(
          clipper: MyClip(),
          child: Stack(
            children: [
              Container(
                height: 400,
                width: 400,
                color: Colors.red.shade200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    // path.moveTo(100, 0);
    // path.lineTo(100, 300);
    // path.lineTo(400, 300);
    // path.lineTo(250, 150);
    // path.lineTo(250, 0);

    // path.lineTo(0, 0);
    // path.lineTo(400, 0);
    // path.lineTo(400, 250);
    //
    // path.quadraticBezierTo(310, 120, 200, 240);
    // path.quadraticBezierTo(85, 355, 0, 330);

    path.lineTo(0, 0);
    path.lineTo(400, 0);
    path.lineTo(400, 40);
    path.quadraticBezierTo(300, 180, 200, 100);
    path.quadraticBezierTo(30, 15, 0, 150);
    path.moveTo(0, 400);
    // path.lineTo(400, 0);
    // path.lineTo(300, 400);

    // path.quadraticBezierTo(100, 150, 0, 400);
    // path.quadraticBezierTo(30, 200, 200, 100);

    // double round = 30.0;
    // path.moveTo(0, size.height * 0.33);
    // path.lineTo(0, size.height - round);
    // path.quadraticBezierTo(0, size.height, round, size.height);
    // path.lineTo(size.width - round, size.height);
    // path.quadraticBezierTo(
    //     size.width, size.height, size.width, size.height - round);
    // path.lineTo(size.width, round * 2);
    // path.quadraticBezierTo(
    //     size.width - 10, round, size.width - round * 1.5, round * 1.5);
    // path.lineTo(round * 0.6, size.height * 0.33 + 0.3);
    // path.quadraticBezierTo(
    //     0, size.height * 0.33, 0, size.height * 0.33 + round);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
