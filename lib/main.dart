import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sentimental_analyst/components/services.dart';
import 'package:sentimental_analyst/screens/home.dart';
import 'package:sentimental_analyst/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
          ChangeNotifierProvider<Teezak>(
            create: (context) => Teezak(),
          ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home:  WelcomeScreen()),
    );
  }
}
