import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/book_notifier.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    final bookNotifier = Provider.of<BookNotifier>(context);

    String _buildRating(int rate) {
      String rating = "";

      for (int i = 0; i < rate; i++) {
        rating += "⭐";
      }

      return rating;
    }

    Widget _buildExpansionTile(String title, List<Widget> children) {
      return Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          title: Text(title),
          children: children,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Book Details"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            SizedBox(
              width: width,
              height: height * 0.6,
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage(
                  bookNotifier.currentBook.image,
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              width: width,
              padding: const EdgeInsets.all(5.0),
              child: Text(
                bookNotifier.currentBook.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
            Container(
              width: width,
              padding: const EdgeInsets.all(5.0),
              child: Text(
                _buildRating(bookNotifier.currentBook.rate),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Consumer<BookNotifier>(builder: (context, data, child) {
              data.borrowedBooks.forEach((item) => print(item.title));

              print(data.currentBook.currentStock);

              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(width / 2 - 30.0, 40.0),
                    ),
                    onPressed: data.currentBook.borrowed
                        ? null
                        : data.currentBook.currentStock > 0
                            ? () {
                                if (data.isBorrowedBookNotFull) {
                                  data.addBorrowedBook(data.currentBook);

                                  data.decreseBookStock(data.currentBook);

                                  data.changeBorrowedBook(data.currentBook);

                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content:
                                          Text("Buku berhasil ditambahkan!"),
                                    ),
                                  );
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                          "Borrowed book has reached the limit!"),
                                    ),
                                  );
                                }
                              }
                            : null,
                    child: const Text("Borrow"),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(width / 2 - 30.0, 40.0),
                    ),
                    onPressed: data.currentBook.borrowed
                        ? null
                        : () {
                            data.changeNotifyBook(data.currentBook);

                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                    "The notification will be sent when the book ready!"),
                              ),
                            );
                          },
                    child: const Text("Notify Me"),
                  ),
                ],
              );
            }),
            const SizedBox(
              height: 5.0,
            ),
            const Divider(
              thickness: 1.0,
              color: Colors.grey,
            ),
            _buildExpansionTile(
              "Summary",
              [
                ListTile(
                  title: Text(
                    bookNotifier.currentBook.summary,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
            const Divider(
              thickness: 1.0,
              color: Colors.grey,
            ),
            _buildExpansionTile(
              "Information",
              bookNotifier.currentBook.information.entries.map(
                (item) {
                  return ListTile(
                    title: Text(
                      item.key,
                      textAlign: TextAlign.justify,
                    ),
                    trailing: Text(
                      item.value,
                      textAlign: TextAlign.justify,
                    ),
                  );
                },
              ).toList(),
            ),
            const SizedBox(
              height: 10.0,
            )
          ],
        ),
      ),
    );
  }
}
