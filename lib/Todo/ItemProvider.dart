import 'package:flutter_riverpod/legacy.dart';

import 'item.dart';

final itemProvider = StateNotifierProvider<itemNotifier, List<Item>>((ref) {
  return itemNotifier();
});

class itemNotifier extends StateNotifier<List<Item>> {
  itemNotifier() : super([]);

  void addItem(String name) {
    final item = Item(id: DateTime.now().toString(), name: name);
    state.add(item);
    state = state.toList();
  }
}
