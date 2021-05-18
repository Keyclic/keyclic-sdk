part of keyclic_sdk_api.api;

class AssignmentCollection {
  AssignmentCollection({
    this.items,
  });

  factory AssignmentCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return AssignmentCollection(
      items: Assignment.listFromJson(json['items']),
    );
  }

  List<Assignment> items;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentCollection &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (items is List && items.isNotEmpty) {
      hashCode ^= items
          .map((Assignment element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<AssignmentCollection> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => AssignmentCollection.fromJson(value))
            ?.toList() ??
        <AssignmentCollection>[];
  }

  static Map<String, AssignmentCollection> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, AssignmentCollection>((String key, dynamic value) {
          return MapEntry(key, AssignmentCollection.fromJson(value));
        }) ??
        <String, AssignmentCollection>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items,
    };
  }

  @override
  String toString() {
    return 'AssignmentCollection[items=$items, ]';
  }
}
