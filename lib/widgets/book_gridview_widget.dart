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

    Widget _buildContainerContent(double height, Widget child) {
      return Container(
        width: double.infinity,
        height: height,
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
        child: child,
      );
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
              child: Card(
                child: SizedBox(
                  height: 350.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 200.0,
                        color: Colors.grey,
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            filteredBooks[index].image,
                          ),
                        ),
                      ),
                      _buildContainerContent(
                        45.0,
                        Text(
                          filteredBooks[index].title,
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      _buildContainerContent(
                        30.0,
                        Text(
                          filteredBooks[index].information["Author"]!,
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ),
                      _buildContainerContent(
                        25.0,
                        _buildRating(
                          filteredBooks[index].rate,
                        ),
                      ),
                      _buildContainerContent(
                        25.0,
                        Text(
                          "Stock: ${filteredBooks[index].stock}",
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
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
