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
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "100",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
                ),
              ),
            ),
          ),

          Center(

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [

              Card( elevation: 05,  child: Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(onPressed: (){}, child: Text("+")),
              )),

              Card( elevation: 05, child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(onPressed: (){}, child: Text("-")),
              )),


            ],),
          )
        ],
      ),
    );
  }
}
