import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/category_notifier.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoryNotifier = Provider.of<CategoryNotifier>(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Category"),
      ),
      body: Container(
        margin: const EdgeInsets.all(20.0),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  categoryNotifier.changeCurrentIndex(index);
                  Navigator.pop(context);
                },
                child: ListTile(
                  title: Text(categoryNotifier.categories[index].category),
                  trailing: categoryNotifier.currentIndex == index
                      ? const CircleAvatar(
                          radius: 8.0,
                          backgroundColor: Colors.blue,
                        )
                      : const SizedBox(),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(
                color: Colors.grey,
              );
            },
            itemCount: categoryNotifier.categories.length),
      ),
    );
  }
}
