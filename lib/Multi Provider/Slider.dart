import 'package:flutter_riverpod/legacy.dart';

final sliderProvider = StateProvider<AppState>((ref) {
  return AppState(slider: 0.3, showPass: false);
});

class AppState {
  double slider;
  bool showPass;

  AppState({required this.slider, required this.showPass});

  AppState copyWith({double? slider, bool? showPass}) {
    return AppState(
      slider: slider ?? this.slider,
      showPass: showPass ?? this.showPass,
    );
  }
}
