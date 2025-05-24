import 'package:byte_brief/index.dart';
import 'package:byte_brief/presentation/articles/articles_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/di/di.dart';

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
      title: 'Byte Brief',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MultiBlocProvider(providers: [
        BlocProvider(
            lazy: false,
            create: (context) =>
                di<CategoriesBloc>()..add(GetCategoriesEvent())),
      ], child: ArticlesScreen()),
    );
  }
}
