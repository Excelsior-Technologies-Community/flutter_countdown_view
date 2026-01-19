import 'dart:async';
import 'package:flutter/material.dart';

class CountdownView extends StatefulWidget {
  final int seconds;

  // USER CONFIGURATION
  final Color textColor;
  final double textSize;
  final bool showBorder;
  final double borderWidth;
  final Color borderColor;

  const CountdownView({
    Key? key,
    required this.seconds,
    this.textColor = Colors.black,
    this.textSize = 20,
    this.showBorder = true,
    this.borderWidth = 2,
    this.borderColor = Colors.grey,
  }) : super(key: key);

  @override
  State<CountdownView> createState() => _CountdownViewState();
}

class _CountdownViewState extends State<CountdownView> {
  late int _remainingSeconds;
  Timer? _timer;
  bool _isRunning = false;
  bool _animate = false;

  @override
  void initState() {
    super.initState();
    _remainingSeconds = widget.seconds;
    start();
  }

  void start() {
    if (_isRunning) return;
    _isRunning = true;

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingSeconds > 0) {
        setState(() {
          _remainingSeconds--;
          if (_remainingSeconds <= 5) {
            _animate = !_animate;
          }
        });
      } else {
        _timer?.cancel();
        _isRunning = false;
      }
    });
  }

  String get formattedTime {
    final minutes = _remainingSeconds ~/ 60;
    final seconds = _remainingSeconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:'
        '${seconds.toString().padLeft(2, '0')}';
  }

  Color get effectiveBorderColor {
    return _remainingSeconds <= 5 ? Colors.red : widget.borderColor;
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          padding: EdgeInsets.all(
            _remainingSeconds <= 5 && _animate ? 24 : 16,
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: widget.showBorder
                ? Border.all(
              color: effectiveBorderColor,
              width: _remainingSeconds <= 5 && _animate
                  ? widget.borderWidth + 2
                  : widget.borderWidth,
            )
                : null,
          ),
          child: Text(
            formattedTime,
            style: TextStyle(
              fontSize:
              _remainingSeconds <= 5 ? widget.textSize + 4 : widget.textSize,
              fontWeight: FontWeight.bold,
              color: _remainingSeconds <= 5
                  ? Colors.red
                  : widget.textColor,
            ),
          ),
        ),
      ),
    );
  }
}
