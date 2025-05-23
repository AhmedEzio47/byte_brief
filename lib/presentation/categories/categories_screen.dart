import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/core/di/di.dart';
import '../index.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => di<CategoriesBloc>()..add(GetCategoriesEvent()),
        child: CategoriesContent(),
      );
  }
}
