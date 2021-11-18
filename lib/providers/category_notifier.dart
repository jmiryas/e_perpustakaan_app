import 'package:flutter/material.dart';

import '../enum/category_enum.dart';
import '../models/category_model.dart';

class CategoryNotifier extends ChangeNotifier {
  int currentIndex = 0;
  CategoryType _categoryType = CategoryType.all;

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

  CategoryType get categoryType {
    return _categoryType;
  }

  void changeCurrentIndex(int newIndex) {
    currentIndex = newIndex;
    notifyListeners();
  }

  void changeCategoryType(CategoryType categoryType) {
    _categoryType = categoryType;
    notifyListeners();
  }
}
