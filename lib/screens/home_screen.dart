import 'package:flutter/material.dart';

import '../widgets/empty_device_widget.dart';
import '../widgets/book_category_widget.dart';
import '../widgets/book_gridview_widget.dart';
import '../widgets/drawer_navigation_widget.dart';
import '../widgets/show_sliver_appbar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

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
                EmptyDeviceWidget(width: width, height: height)
              ],
            )
          ]),
        ));
  }
}
