part of keyclic_sdk_api.api;

class PersonCollection {
  PersonCollection({
    this.items,
  });

  PersonCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    items = Person.listFromJson(json['items']);
  }

  List<Person> items;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PersonCollection &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      items.map((dynamic element) => element.hashCode).fold(0,
          (dynamic value, dynamic cursor) => value.hashCode ^ cursor.hashCode);

  static List<PersonCollection> listFromJson(List<dynamic> json) {
    return json == null
        ? <PersonCollection>[]
        : json.map((value) => PersonCollection.fromJson(value)).toList();
  }

  static Map<String, PersonCollection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PersonCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PersonCollection.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items,
    };
  }

  @override
  String toString() {
    return 'PersonCollection[items=$items, ]';
  }
}
