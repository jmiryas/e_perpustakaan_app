import 'package:flutter/cupertino.dart';

import '../enum/category_enum.dart';
import '../models/category_model.dart';

class CategoryNotifier extends ChangeNotifier {
  int currentIndex = 0;

  final List<CategoryModel> _categories = [
    CategoryModel(
      category: "All Categories",
      type: CategoryType.all,
    ),
    CategoryModel(
      category: "Adult Fictions",
      type: CategoryType.adultFictions,
    ),
    CategoryModel(
      category: "Business & Investing",
      type: CategoryType.businessAndInvesting,
    ),
    CategoryModel(
      category: "History",
      type: CategoryType.history,
    ),
    CategoryModel(
      category: "Science",
      type: CategoryType.science,
    ),
  ];

  List<CategoryModel> get categories {
    return _categories;
  }

  CategoryModel get currentCategory {
    return _categories[currentIndex];
  }

  void changeCurrentIndex(int newIndex) {
    currentIndex = newIndex;
    notifyListeners();
  }
}
