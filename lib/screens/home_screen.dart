import 'package:flutter/material.dart';

import '../widgets/book_category_widget.dart';
import '../widgets/book_gridview_widget.dart';
import '../widgets/drawer_navigation_widget.dart';
import '../widgets/show_sliver_appbar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const DrawerNavigationWidget(),
        body: DefaultTabController(
          length: 2,
          child: TabBarView(children: [
            const CustomScrollView(
              slivers: [
                ShowSliverAppBarWidget(
                  title: "e-Perpustakaan",
                ),
                BookCategoryWidget(),
                BookGridviewWidget()
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
