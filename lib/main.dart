import 'package:es_hr/pages/auth_page.dart';
import 'package:es_hr/service/locator.dart';
import 'package:flutter/material.dart';

void main() {
  setupServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      title: 'Material App',
      home: AuthPage(),
    );
  }
}
