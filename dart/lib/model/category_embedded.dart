part of keyclic_sdk_api.api;

class CategoryEmbedded {
  CategoryEmbedded({
    this.children,
    this.path,
  });

  factory CategoryEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return CategoryEmbedded(
      children: Category.listFromJson(json['children']),
      path: NodePath.listFromJson(json['path']),
    );
  }

  List<Category> children;

  List<NodePath> path;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryEmbedded &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(children, other.children) &&
        DeepCollectionEquality.unordered().equals(path, other.path);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (children is List && children.isNotEmpty) {
      hashCode ^= children
          .map((Category element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }
    if (path is List && path.isNotEmpty) {
      hashCode ^= path
          .map((NodePath element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<CategoryEmbedded> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => CategoryEmbedded.fromJson(value))
            ?.toList() ??
        <CategoryEmbedded>[];
  }

  static Map<String, CategoryEmbedded> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, CategoryEmbedded>((String key, dynamic value) {
          return MapEntry(key, CategoryEmbedded.fromJson(value));
        }) ??
        <String, CategoryEmbedded>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (children != null) 'children': children,
      if (path != null) 'path': path,
    };
  }

  @override
  String toString() {
    return 'CategoryEmbedded[children=$children, path=$path, ]';
  }
}
