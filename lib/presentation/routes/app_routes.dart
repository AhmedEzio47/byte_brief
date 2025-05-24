import 'package:byte_brief/presentation/articles/articles_screen.dart';
import 'package:flutter/material.dart';

import '../categories/categories_screen.dart';

enum AppRoutes {
  categories(screen: CategoriesScreen()),
  articles(screen: ArticlesScreen());

  final Widget screen;

  const AppRoutes({required this.screen});
}
