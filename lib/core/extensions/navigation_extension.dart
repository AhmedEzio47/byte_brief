import 'package:flutter/material.dart';
import 'package:myapp/presentation/routes/app_routes.dart';

extension NavigationExtension on BuildContext {
  void navigate(AppRoutes route) => Navigator.of(
    this,
  ).push(MaterialPageRoute(builder: (_) => route.screen));
}
