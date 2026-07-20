import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

import 'Multi Provider/Slider.dart';

class MultiProvider extends ConsumerWidget {
  const MultiProvider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Multi Provider"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Consumer(
            builder: (context, ref, child) {
              final state = ref.watch(sliderProvider);

              return InkWell(
                onTap: (){
                  ref.read(sliderProvider.notifier).state = state.copyWith(showPass : !state.showPass);
                },
                child: Container(
                  height: 60,
                  width: 100,
                  child: state.showPass  ? Icon(Icons.visibility_off) : Icon(Icons.visibility)
                ),
              );
            },
          ),
          SizedBox(height: 10,),

          Consumer(
            builder: (context, ref, child) {
              final state = ref.watch(sliderProvider);

              return Container(
                height: 200,
                width: 250,
                color: Colors.green.withOpacity(state.slider),
              );
            },
          ),

          Consumer(
            builder: (context, ref, child) {
              final state = ref.watch(sliderProvider);

              return Slider(
                value: state.slider,
                onChanged: (value) {
                  ref.read(sliderProvider.notifier).state =
                      state.copyWith(
                        slider: value,
                      );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}