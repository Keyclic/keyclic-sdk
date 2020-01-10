part of keyclic_sdk_api.api;

class PersonCollection {
  PersonCollection({
    this.items,
  });

  factory PersonCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PersonCollection(
      items: Person.listFromJson(json['items']),
    );
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
  int get hashCode {
    int hashCode = 0;

    if (items is List && items.isNotEmpty) {
      hashCode ^= items
          .map((Person element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<PersonCollection> listFromJson(List<dynamic> json) {
    return json == null
        ? <PersonCollection>[]
        : json
            .map((dynamic value) => PersonCollection.fromJson(value))
            .toList();
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
      if (items != null) 'items': items,
    };
  }

  @override
  String toString() {
    return 'PersonCollection[items=$items, ]';
  }
}
