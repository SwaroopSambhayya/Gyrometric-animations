import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:interpolate_animated/interpolate_animated.dart';
import 'package:sensors_plus/sensors_plus.dart';

class Eye extends StatefulWidget {
  const Eye({super.key});

  @override
  State<Eye> createState() => _EyeState();
}

class _EyeState extends State<Eye> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const Balls(),
        Transform.scale(
          scale: 1.4,
          child: const Image(
            width: 60,
            image: Svg('lib/assets/eye.svg'),
          ),
        ),
      ],
    );
  }
}

class Balls extends StatefulWidget {
  const Balls({
    super.key,
  });

  @override
  State<Balls> createState() => _BallsState();
}

class _BallsState extends State<Balls> {
  Offset? ballPosition;

  @override
  void initState() {
    super.initState();
  }

  getPosition(AccelerometerEvent? event) {
    if (event != null) {
      double tempX = interpolate(event.x,
          inputRange: [-2, 2],
          outputRange: [26, 0],
          extrapolate: Extrapolate.clamp);

      double tempY = interpolate(event.y,
          inputRange: [7.5, 9.8],
          outputRange: [0, 44],
          extrapolate: Extrapolate.clamp);
      ballPosition ??= Offset(tempX, tempY);
      if ((tempX - ballPosition!.dx).abs() > 2) {
        ballPosition = Offset(tempX, ballPosition!.dy);
      }
      if ((tempY - ballPosition!.dy).abs() > 2) {
        ballPosition = Offset(ballPosition!.dx, tempY);
      }
      return ballPosition;
    }
    return Offset.zero;
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<AccelerometerEvent>(
        stream: accelerometerEventStream(),
        builder: (context, snapshot) {
          Offset position = getPosition(snapshot.data);
          return AnimatedPositioned(
            left: snapshot.hasData ? position.dx : 10,
            top: snapshot.hasData ? position.dy : 44,
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeIn,
            child: Container(
              width: 32,
              height: 32,
              decoration: const BoxDecoration(
                  color: Colors.black, shape: BoxShape.circle),
            ),
          );
        });
  }
}
