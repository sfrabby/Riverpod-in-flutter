import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/Todo/ItemProvider.dart';

class UI extends ConsumerWidget {
  const UI({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ItemX = ref.watch(itemProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("To-do", style: TextStyle(color: Colors.white)),
      ),
      body: ItemX.isEmpty ? Center(child: Text("Item not found"),) :  ListView.builder(
        itemCount: ItemX.length,
        itemBuilder: (context, index) {
          final itemDetail = ItemX[index];
          return Card(
            child: ListTile(
              title: Text(itemDetail.name),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      ref.read(itemProvider.notifier).deleteItem(itemDetail.id);
                    },
                    icon: Icon(Icons.delete, color: Colors.red),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(itemProvider.notifier).addItem("Fazle");
        },
        backgroundColor: Colors.teal,
        child: Icon(Icons.add),
      ),
    );
  }
}
