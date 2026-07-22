import 'package:flutter_riverpod/legacy.dart';

final ssProvider = StateNotifierProvider<ssNotifier, ssState>((ref) {
  return ssNotifier();
});

class ssNotifier extends StateNotifier<ssState> {
  ssNotifier() : super(ssState( ssss: ''));

  void ssss(String query) {
    state = state;
  }

}


class ssState {
  final String ssss;
  ssState ({ required this.ssss});

  ssState copyWith ({
    String ? ssss
}){
    return ssState( ssss: ssss ?? this.ssss);
  }
}
