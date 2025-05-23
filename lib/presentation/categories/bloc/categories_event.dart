sealed class CategoriesEvent {
  const CategoriesEvent();
}

/// It's recommended to rename these events to use the convention of bloc events (ex: PostCreated)

final class GetCategoriesEvent extends CategoriesEvent {
  const GetCategoriesEvent();
}

final class CreateCategoriesEvent extends CategoriesEvent {
  final String name;
  const CreateCategoriesEvent(this.name);
}

final class EditCategoriesEvent extends CategoriesEvent {
  const EditCategoriesEvent();
}

final class DeleteCategoriesEvent extends CategoriesEvent {
  const DeleteCategoriesEvent();
}

final class CategorySelectionToggled extends CategoriesEvent {
  final int id;
  const CategorySelectionToggled(this.id);
}
