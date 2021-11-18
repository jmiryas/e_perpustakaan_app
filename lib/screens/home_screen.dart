import 'package:e_perpustakaan_app/providers/book_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/category_screen.dart';
import '../providers/category_notifier.dart';
import '../widgets/drawer_navigation_widget.dart';
import '../widgets/show_sliver_appbar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoryNotifier = Provider.of<CategoryNotifier>(context);
    final bookNotifier = Provider.of<BookNotifier>(context);

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

    return Scaffold(
        drawer: const DrawerNavigationWidget(),
        body: DefaultTabController(
          length: 2,
          child: TabBarView(children: [
            CustomScrollView(
              slivers: [
                const ShowSliverAppBarWidget(
                  title: "e-Perpustakaan",
                ),
                SliverToBoxAdapter(
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
                      margin: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      child: Card(
                        child: Center(
                          child:
                              Text(categoryNotifier.currentCategory.category),
                        ),
                      ),
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  sliver: SliverGrid(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return Card(
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
                                      bookNotifier.books[index].image,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 45.0,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5.0, horizontal: 10.0),
                                  child: Text(
                                    bookNotifier.books[index].title,
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 30.0,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5.0, horizontal: 10.0),
                                  child: Text(
                                    bookNotifier
                                        .books[index].information["Author"]!,
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: const TextStyle(color: Colors.grey),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 25.0,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5.0, horizontal: 10.0),
                                  child: _buildRating(
                                    bookNotifier.books[index].rate,
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 25.0,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5.0, horizontal: 10.0),
                                  child: Text(
                                    "Stock: ${bookNotifier.books[index].stock}",
                                    textAlign: TextAlign.start,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      childCount: bookNotifier.books.length,
                    ),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 2 / 3,
                      mainAxisExtent: 350.0,
                    ),
                  ),
                )
              ],
            ),
            CustomScrollView(
              slivers: [
                const ShowSliverAppBarWidget(
                  title: "e-Perpustakaan",
                ),

                // Show other sliver stuff
                SliverList(
                  delegate: SliverChildListDelegate([
                    Container(
                      height: 600,
                      color: Colors.blue[200],
                      child: Center(
                        child: Text(
                          'Settings Tab',
                          style: TextStyle(fontSize: 40),
                        ),
                      ),
                    ),
                    Container(
                      height: 1200,
                      color: Colors.pink,
                    ),
                  ]),
                ),
              ],
            )
          ]),
        ));
  }
}
