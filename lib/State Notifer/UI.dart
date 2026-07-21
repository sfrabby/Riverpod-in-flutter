import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/State%20Notifer/stateNotifier.dart';

class Sta extends ConsumerWidget {
  const Sta({super.key});

  @override
  Widget build(BuildContext context ,WidgetRef ref) {
    final search = ref.watch(searchProvider);
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal, title: Text("state notifier"),),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [

          TextField(
            onChanged: (value){
              ref.watch(searchProvider.notifier).search(value);
            },
          ),
          Text(search)
        ],
      ),
    );
  }
}
