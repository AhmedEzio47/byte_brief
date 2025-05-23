import 'package:flutter/material.dart';
import 'package:myapp/core/di/di.dart';
import 'package:myapp/presentation/index.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  injectDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: CategoriesScreen(),
    );
  }
}
