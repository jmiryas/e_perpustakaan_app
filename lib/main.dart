import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/home_screen.dart';
import '../providers/book_notifier.dart';
import '../providers/category_notifier.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => CategoryNotifier(),
          ),
          ChangeNotifierProvider(
            create: (context) => BookNotifier(),
          ),
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "e-Perpustakaan",
          home: HomeScreen(),
        ));
  }
}
