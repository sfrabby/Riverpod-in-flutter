import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.teal,
      title: Text("Riverpod", style: TextStyle(color: Colors.white),),

    ),);
  }
}
