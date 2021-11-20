import 'package:flutter/material.dart';

class BookContainerContentWidget extends StatelessWidget {
  final double height;
  final Widget child;
  const BookContainerContentWidget({
    Key? key,
    required this.height,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      child: child,
    );
  }
}
