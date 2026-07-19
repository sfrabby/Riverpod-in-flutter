import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Riverpod", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Center(
            child: Card(
              elevation: 09,
              child: Text(
                "100",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
              ),
            ),
          ),

          Row(children: [
            ElevatedButton(onPressed: (){}, child: Text("+")),
            ElevatedButton(onPressed: (){}, child: Text("-")),


          ],)
        ],
      ),
    );
  }
}
