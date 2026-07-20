import 'package:flutter/material.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:riverpod/riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counter = StateProvider<int>((ref) {
  return 0;
});

final switchProvider = StateProvider<bool>((ref) {
  return false;
});

class homeScreen extends ConsumerWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counter);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Riverpod", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Consumer(builder: (context, ref, child) {
            return Center(
              child: Card(
                elevation: 09,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    count.toString(),
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
                  ),
                ),
              ),
            );
          },),


          Consumer(builder: (context, ref, child) {
            final val = ref.watch(switchProvider);
            return Switch(value: val, onChanged: (value){
              ref.read(switchProvider.notifier).state = value;
            });
          },),


          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [
                Card(
                  elevation: 05,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: ElevatedButton(onPressed: () {
                      ref.read(counter.notifier).state++;
                    }, child: Text("+")),
                  ),
                ),

                Card(
                  elevation: 05,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton(onPressed: () {
                      ref.read(counter.notifier).state--;
                    }, child: Text("-")),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
