import 'package:flutter/material.dart';
import 'app/routes/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(


      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF9F9F9),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        fontFamily: "Sora"
      ),
    );
  }
}