import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/Future/futurePro.dart';

class Futureui extends ConsumerWidget {
  const Futureui({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(futureProvider);
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal ,title: Text("Future Provider"),),

      body: Center(child: provider.when(data: (data) => Text(data.toString()), error: (error, stackTrace) => Text(error.toString()), loading: () => CircularProgressIndicator() ,),
      )
    );
  }
}
