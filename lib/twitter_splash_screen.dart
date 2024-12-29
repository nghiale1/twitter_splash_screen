import 'package:flutter/material.dart';

class TwitterSplashScreen extends StatefulWidget {
  final Widget child;
  final Widget? logo;
  final Color backgroundColor;
  final Color logoColor;
  final Duration initialDelay;
  final Duration animationDuration;

  const TwitterSplashScreen({
    Key? key,
    required this.child,
    this.logo,
    this.backgroundColor = Colors.black,
    this.logoColor = Colors.white,
    this.initialDelay = const Duration(milliseconds: 500),
    this.animationDuration = const Duration(milliseconds: 1200),
  }) : super(key: key);

  @override
  State<TwitterSplashScreen> createState() => _TwitterSplashScreenState();
}

class _TwitterSplashScreenState extends State<TwitterSplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _initialScaleAnimation;
  late Animation<double> _finalScaleAnimation;

  @override
  void initState() {
    super.initState();
    _setupAnimations();
    _startAnimations();
  }

  void _setupAnimations() {
    _controller = AnimationController(
      duration: widget.animationDuration,
      vsync: this,
    );

    // Initial bounce animation (logo gets bigger then smaller)
    _initialScaleAnimation = TweenSequence<double>([

      TweenSequenceItem(
        tween: Tween<double>(begin: 1.2, end: 0.8)
            .chain(CurveTween(curve: Curves.easeInOut)),
        weight: 30,
      ),
    ]).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.5),
      ),
    );

    // Final scale up animation (covers the whole screen)
    _finalScaleAnimation = Tween<double>(begin: 0.9, end: 50.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.5, 1.0, curve: Curves.easeIn),
      ),
    );
  }

  void _startAnimations() {
    Future.delayed(widget.initialDelay, () {
      if (mounted) {
        _controller.forward().whenComplete(() {
          Navigator.pushReplacement(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) => widget.child,
              transitionDuration: Duration.zero,
            ),
          );
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: widget.backgroundColor,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Center(
            child: Transform.scale(
              scale: _controller.value >= 0.5
                  ? _finalScaleAnimation.value
                  : _initialScaleAnimation.value,
              child: widget.logo ??
                  Icon(
                    Icons.flutter_dash,
                    size: 60,
                    color: widget.logoColor,
                  ),
            ),
          );
        },
      ),
    );
  }
}

// Custom Twitter Logo Widget (có thể thay bằng SVG hoặc Image thật)
class TwitterLogo extends StatelessWidget {
  final double size;
  final Color color;

  const TwitterLogo({
    Key? key,
    this.size = 60,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.flutter_dash, // Thay bằng Twitter logo thật
      size: size,
      color: color,
    );
  }
}