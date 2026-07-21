import 'package:flutter/material.dart';
import 'package:flutter_riverpod/legacy.dart';

final searchProvider = StateNotifierProvider<SearchNotifier, String>((ref) {
  return SearchNotifier();
});

class SearchNotifier extends StateNotifier <String> {
  SearchNotifier() : super('');

  void search (String query){
    state = query;
  }
}
