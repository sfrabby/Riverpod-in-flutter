import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'Slider.dart';

class MultiProvider extends ConsumerWidget {
  const MultiProvider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          "Multi Provider",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            /// Visibility Icon
            Consumer(
              builder: (context, ref, child) {
                print("OK 1");

                final showPass = ref.watch(
                  sliderProvider.select((state) => state.showPass),
                );

                return InkWell(
                  onTap: () {
                    final currentState = ref.read(sliderProvider);

                    ref.read(sliderProvider.notifier).state = currentState
                        .copyWith(showPass: !currentState.showPass);
                  },
                  child: Container(
                    height: 60,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      showPass ? Icons.visibility_off : Icons.visibility,
                      color: Colors.white,
                    ),
                  ),
                );
              },
            ),

            /// Opacity Container
            Consumer(
              builder: (context, ref, child) {
                print("OK 2");

                final state = ref.watch(
                  sliderProvider.select((state) => state.slider),
                );

                return Container(
                  height: 200,
                  width: 250,
                  color: Colors.green.withOpacity(state),
                );
              },
            ),

            /// Slider
            Consumer(
              builder: (context, ref, child) {
                final sliderValue = ref.watch(
                  sliderProvider.select((state) => state.slider),
                );

                return Slider(
                  value: sliderValue,
                  min: 0,
                  max: 1,
                  onChanged: (value) {
                    final currentState = ref.read(sliderProvider);

                    ref.read(sliderProvider.notifier).state = currentState
                        .copyWith(slider: value);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
