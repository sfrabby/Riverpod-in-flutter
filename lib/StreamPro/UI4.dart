import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'StreamPro.dart';

class ClockScreen extends ConsumerWidget {
  const ClockScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    log("build");
    return Scaffold(
      body: Consumer(builder: (context, ref, child) {
        final clock = ref.watch(clockProvider);
        return Center(
          child: clock.when(
            data: (time) =>
                Text(time.toString(), style: const TextStyle(fontSize: 25)),
            loading: () => const CircularProgressIndicator(),
            error: (e, s) => Text(e.toString()),
          ),
        );
      },)
    );
  }
}
