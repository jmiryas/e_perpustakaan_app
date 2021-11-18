import 'package:flutter/material.dart';

class ShowSliverAppBarWidget extends StatelessWidget {
  final String title;
  const ShowSliverAppBarWidget({Key? key, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        snap: false,
        pinned: true,
        // floating: true,
        centerTitle: true,
        title: Text(title),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
        backgroundColor: Colors.blue,
        bottom: const TabBar(
          tabs: [
            Tab(
              text: "Library",
            ),
            Tab(
              text: "Device",
            )
          ],
        ));
  }
}
