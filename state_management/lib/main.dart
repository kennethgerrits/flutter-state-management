import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/providers/rating_provider.dart';
import 'package:state_management/views/home_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Rating()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'State management demo',
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        // '/second': (context) => SecondPage(),
      },
    );
  }
}
