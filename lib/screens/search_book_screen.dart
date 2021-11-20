import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/book_notifier.dart';

class SearchBookScreen extends StatelessWidget {
  const SearchBookScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final searchBookController = TextEditingController();

    return Consumer<BookNotifier>(builder: (context, data, child) {
      return Scaffold(
        appBar: AppBar(
          title: Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: TextField(
                controller: searchBookController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      data.clearSearchedBooks();
                      searchBookController.clear();
                    },
                  ),
                  hintText: "Search ...",
                  border: InputBorder.none,
                ),
                onSubmitted: (value) {
                  data.getSearchedBooks(value);

                  if (data.searchedBook.isEmpty) {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text("Result"),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: const <Widget>[
                              Text("No result found!"),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                            child: const Text("OK"),
                            onPressed: () {
                              data.clearSearchedBooks();
                              searchBookController.clear();
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                    );
                  }
                },
              ),
            ),
          ),
        ),
        body: data.searchedBook.isNotEmpty
            ? Container(
                padding: const EdgeInsets.all(10.0),
                child: ListView.builder(
                    itemCount: data.searchedBook.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Image(
                          image: AssetImage(data.searchedBook[index].image),
                        ),
                        title: Text(data.searchedBook[index].title),
                        subtitle: Text(
                            data.searchedBook[index].information["Author"]!),
                        onTap: () {},
                      );
                    }),
              )
            : const Center(
                child: Text("You can see the result here ..."),
              ),
      );
    });
  }
}
