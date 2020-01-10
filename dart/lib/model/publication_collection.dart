part of keyclic_sdk_api.api;

class PublicationCollection {
  PublicationCollection({
    this.items,
  });

  factory PublicationCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PublicationCollection(
      items: Publication.listFromJson(json['items']),
    );
  }

  List<Publication> items;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationCollection &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (items is List && items.isNotEmpty) {
      hashCode ^= items
          .map((Publication element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<PublicationCollection> listFromJson(List<dynamic> json) {
    return json == null
        ? <PublicationCollection>[]
        : json
            .map((dynamic value) => PublicationCollection.fromJson(value))
            .toList();
  }

  static Map<String, PublicationCollection> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PublicationCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PublicationCollection.fromJson(value));
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
    return 'PublicationCollection[items=$items, ]';
  }
}
