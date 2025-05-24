import 'package:byte_brief/core/di/di.dart';
import 'package:byte_brief/core/services/gemini_service.dart';
import 'package:byte_brief/presentation/categories/bloc/categories_bloc.dart';
import 'package:byte_brief/presentation/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArticlesScreen extends StatelessWidget {
  const ArticlesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.edit),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => AppRoutes.categories.screen));
          }),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              final topics = context
                  .read<CategoriesBloc>()
                  .state
                  .categories
                  ?.map((e) => e.name)
                  .toList();
              di<GeminiService>().sendMessage(topics.toString());
            },
            child: Text('Fetch')),
      ),
    );
  }
}
