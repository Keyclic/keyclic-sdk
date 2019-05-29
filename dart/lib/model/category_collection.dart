part of keyclic_sdk_api.api;

class CategoryCollection {
  CategoryCollection();

  CategoryCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    items = Category.listFromJson(json['items']);
  }

  List<Category> items;

  Map<String, dynamic> toJson() {
    return {
      'items': items,
    };
  }

  @override
  String toString() {
    return 'CategoryCollection[items=$items, ]';
  }

  static List<CategoryCollection> listFromJson(List<dynamic> json) {
    return json == null
        ? List<CategoryCollection>()
        : json.map((value) => CategoryCollection.fromJson(value)).toList();
  }

  static Map<String, CategoryCollection> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, CategoryCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = CategoryCollection.fromJson(value));
    }
    return map;
  }
}
