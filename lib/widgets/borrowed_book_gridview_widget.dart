import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/book_notifier.dart';
import '../widgets/book_card_widget.dart';
import '../widgets/book_container_content_widget.dart';

class BorrowedBookGridviewWidget extends StatelessWidget {
  const BorrowedBookGridviewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bookNotifier = Provider.of<BookNotifier>(context);

    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return BookCardWidget(
                image: bookNotifier.borrowedBooks[index].image,
                title: bookNotifier.borrowedBooks[index].title,
                author:
                    bookNotifier.borrowedBooks[index].information["Author"]!,
                bottom: const [
                  BookContainerContentWidget(
                    height: 25.0,
                    child: Text(
                      "Valid until a week since this day.",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ]);
          },
          childCount: bookNotifier.borrowedBooks.length,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 2 / 3,
          mainAxisExtent: 320.0,
        ),
      ),
    );
  }
}
