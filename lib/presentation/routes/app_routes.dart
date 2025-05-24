import 'package:flutter/material.dart';

import '../categories/categories_screen.dart';

enum AppRoutes {
  categories(screen: CategoriesScreen());

  final Widget screen;

  const AppRoutes({required this.screen});
}
