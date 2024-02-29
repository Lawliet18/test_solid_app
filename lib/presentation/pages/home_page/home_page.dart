import 'package:flutter/material.dart';
import 'package:test_solid_app/core/utils/random_utils.dart';

/// Home page
class HomePage extends StatefulWidget {
  /// Home page constructor
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const Duration _animationDuration = Duration(milliseconds: 500);
  static const Curve _animationCurve = Curves.decelerate;
  static const Size _minSize = Size(200, 200);
  static const int _maxRadius = 100;

  late final Size _maxSize = MediaQuery.sizeOf(context);

  double _radius = 0;

  late Color _color = RandomUtils.generateRandomColor();
  late Size _size = _maxSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _updateScreen,
      onLongPress: _resetScreen,
      child: Scaffold(
        backgroundColor: Colors.blueGrey.shade100,
        body: Center(
          child: AnimatedContainer(
            duration: _animationDuration,
            curve: _animationCurve,
            width: _size.width,
            height: _size.height,
            decoration: BoxDecoration(
              color: _color,
              borderRadius: BorderRadius.circular(_radius),
            ),
            alignment: Alignment.center,
            child: const Text(
              'Hello there',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _updateScreen() {
    setState(() {
      _color = RandomUtils.generateRandomColor();
      _size = RandomUtils.generateRandomSize(_minSize, _maxSize);
      _radius = RandomUtils.generateRandomRadius(_maxRadius);
    });
  }

  void _resetScreen() {
    setState(() {
      _color = RandomUtils.generateRandomColor();
      _size = _maxSize;
      _radius = 0;
    });
  }
}
