import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_07/counter_04.dart';
import 'package:provider_07/home_0.dart';
import 'package:provider_07/list_map_provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => CounterProvider()),
      ChangeNotifierProvider(create: (context) => ListMapProvider())
    ],
    child: MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
