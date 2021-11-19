import 'package:e_perpustakaan_app/enum/category_enum.dart';

class BookModel {
  final String title;
  final String summary;
  final Map<String, String> information;
  final int rate;
  final String image;
  final int currentStock;
  final int stock;
  final CategoryType categoryType;
  final bool notify;
  final bool borrowed;

  BookModel({
    required this.title,
    required this.summary,
    required this.information,
    required this.rate,
    required this.image,
    required this.currentStock,
    required this.stock,
    required this.categoryType,
    this.notify = false,
    this.borrowed = false,
  });
}
