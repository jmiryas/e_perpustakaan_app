import 'package:e_perpustakaan_app/widgets/book_card_widget.dart';
import 'package:e_perpustakaan_app/widgets/book_container_content_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/book_notifier.dart';
import '../providers/category_notifier.dart';
import '../screens/book_details_screen.dart';

class BookGridviewWidget extends StatelessWidget {
  const BookGridviewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoryNotifier = Provider.of<CategoryNotifier>(context);
    final bookNotifier = Provider.of<BookNotifier>(context);

    final filteredBooks = bookNotifier.getBookFiltered(
        bookNotifier.books, categoryNotifier.categoryType);

    Widget _buildRating(int rate) {
      String rating = "";

      for (int i = 0; i < rate; i++) {
        rating += "⭐";
      }

      final result = Text(rating,
          textAlign: TextAlign.start,
          style: const TextStyle(
            fontSize: 12.0,
          ));

      return result;
    }

    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return GestureDetector(
              onTap: () {
                bookNotifier.changeCurrentIndex(index);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BookDetailsScreen(),
                  ),
                );
              },
              child: BookCardWidget(
                  image: filteredBooks[index].image,
                  title: filteredBooks[index].title,
                  author: filteredBooks[index].title,
                  bottom: [
                    BookContainerContentWidget(
                      height: 25.0,
                      child: _buildRating(
                        filteredBooks[index].rate,
                      ),
                    ),
                    BookContainerContentWidget(
                      height: 25.0,
                      child: Text(
                        "Stock: ${filteredBooks[index].currentStock} / ${filteredBooks[index].stock}",
                        textAlign: TextAlign.start,
                      ),
                    )
                  ]),
            );
          },
          childCount: filteredBooks.length,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 2 / 3,
          mainAxisExtent: 350.0,
        ),
      ),
    );
  }
}
