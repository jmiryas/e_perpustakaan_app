import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/category_screen.dart';
import '../providers/category_notifier.dart';

class BookCategoryWidget extends StatelessWidget {
  const BookCategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoryNotifier = Provider.of<CategoryNotifier>(context);

    return SliverToBoxAdapter(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CategoryScreen(),
            ),
          );
        },
        child: Container(
          height: 50.0,
          margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          child: Card(
            child: Center(
              child: Text(categoryNotifier.currentCategory.category),
            ),
          ),
        ),
      ),
    );
  }
}
