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
                SliverList(
                  delegate: SliverChildListDelegate([
                    GestureDetector(
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
                            vertical: 10.0, horizontal: 20.0),
                        child: Card(
                          child: Center(
                            child:
                                Text(categoryNotifier.currentCategory.category),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 1500,
                      color: Colors.green,
                    ),
                  ]),
                ),
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
