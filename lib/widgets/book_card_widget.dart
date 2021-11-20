import 'package:flutter/material.dart';

import '../widgets/book_container_content_widget.dart';

class BookCardWidget extends StatelessWidget {
  final String image;
  final String title;
  final String author;
  final List<Widget> bottom;
  const BookCardWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.author,
    required this.bottom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  image,
                ),
              ),
            ),
            BookContainerContentWidget(
              height: 45.0,
              child: Text(
                title,
                textAlign: TextAlign.start,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            BookContainerContentWidget(
              height: 30.0,
              child: Text(
                author,
                textAlign: TextAlign.start,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: const TextStyle(color: Colors.grey),
              ),
            ),
            Column(children: bottom),
          ],
        ),
      ),
    );
  }
}
