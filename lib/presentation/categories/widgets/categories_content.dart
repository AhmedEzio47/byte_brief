import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/index.dart';

class CategoriesContent extends StatelessWidget {
  const CategoriesContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CategoriesBloc>().add(CreateCategoriesEvent('Video Games'));
        },
        child: Icon(Icons.add),
      ),
      body: BlocBuilder<CategoriesBloc, CategoriesState>(
        builder:
            (context, state) => ListView.separated(
              itemBuilder:
                  (context, index) => Card(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    color: Theme.of(context).primaryColor.withValues(alpha: .1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    borderOnForeground: true,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Checkbox(
                            value: state.categories?[index].isSelected == true,
                            onChanged:
                                (value) => context.read<CategoriesBloc>().add(
                                  CategorySelectionToggled(1),
                                ),
                          ),

                          Text(state.categories?[index].name ?? ''),
                        ],
                      ),
                    ),
                  ),
              separatorBuilder: (context, index) => const SizedBox(height: 8),
              itemCount: state.categories?.length ?? 0,
            ),
      ),
    );
  }
}
