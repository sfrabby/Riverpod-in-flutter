import 'package:flutter/material.dart';
import 'package:flutter_riverpod/legacy.dart';

final searchProvider = StateNotifierProvider<SearchNotifier, searchState>((
  ref,
) {
  return SearchNotifier();
});

class SearchNotifier extends StateNotifier<searchState> {
  SearchNotifier() : super(searchState(search: '', onChanged: false));

  void search(String query) {
    state = state.copyWith(search: query);
  }

  void onChanged(bool onChanged) {
    state = state.copyWith(onChanged: onChanged);
  }
}

class searchState {
  final bool onChanged;
  final String search;

  searchState({required this.search, required this.onChanged});

  searchState copyWith({String? search, bool? onChanged}) {
    return searchState(
      search: search ?? this.search,
      onChanged: onChanged ?? this.onChanged,
    );
  }
}
