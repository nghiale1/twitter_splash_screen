import 'package:flutter/material.dart';
import 'package:twitter_splash_screen/twitter_splash_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: TwitterSplashScreen(
        backgroundColor: Color(0xFF02A0E9),
        initialDelay: const Duration(milliseconds: 400),
        animationDuration: const Duration(milliseconds: 1200),
        // logo: Image.asset("assets/icon_twitter.png",),
        logo: SvgPicture.asset(
          "assets/icon_twitter.svg",
          width: 100,
          height: 100,
          color: Colors.white,
        ),
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Twitter"),
      ),
      body: Center(child: Image.asset("assets/icon_twitter.png")),
    );
  }
}
