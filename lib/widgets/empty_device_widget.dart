import 'package:flutter/material.dart';

class EmptyDeviceWidget extends StatelessWidget {
  const EmptyDeviceWidget({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        width: width,
        height: height * 0.7,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: width * 0.5,
                height: height * 0.3,
                child: const Image(
                  image: AssetImage("images/library.png"),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                "You haven't borrowed any items",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Borrow Item"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
