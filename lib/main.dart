import 'package:coffe_app/pages/sing_up.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme:const TextTheme(
      bodyMedium: TextStyle(color: Colors.white), // default for normal text
      bodyLarge: TextStyle(color: Colors.white),
      bodySmall: TextStyle(color: Colors.white),
      titleLarge: TextStyle(color: Colors.white),
      titleMedium: TextStyle(color: Colors.white),
      titleSmall: TextStyle(color: Colors.white),
    ),
        colorScheme: ColorScheme.fromSeed(
          
          seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const SingUp(),
    );
  }
}

