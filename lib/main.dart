import 'package:flutter/material.dart';
import 'package:mvvmproject/pages/control.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home:  Controll(),
    );
  }
}
// ha - ha nolta error
// x'op mayli yaxshi dam mehnatga ham -dam . Sog' bo'lasla. Man hakimbek_dev man