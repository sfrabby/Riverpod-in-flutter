import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'Future/FutureUI.dart';
import 'Home Screen.dart';
import 'Multi Provider/multi provider.dart';
import 'State Notifer/UI.dart';
import 'StreamPro/UI4.dart';
import 'Todo/UI.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home:  ClockScreen(),
      ),
    );
  }
}

