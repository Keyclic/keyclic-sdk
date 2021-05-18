part of keyclic_sdk_api.api;

class OperationCollection {
  OperationCollection({
    this.items,
  });

  factory OperationCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationCollection(
      items: Operation.listFromJson(json['items']),
    );
  }

  List<Operation> items;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationCollection &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (items is List && items.isNotEmpty) {
      hashCode ^= items
          .map((Operation element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<OperationCollection> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => OperationCollection.fromJson(value))
            ?.toList() ??
        <OperationCollection>[];
  }

  static Map<String, OperationCollection> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, OperationCollection>((String key, dynamic value) {
          return MapEntry(key, OperationCollection.fromJson(value));
        }) ??
        <String, OperationCollection>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (items != null) 'items': items,
    };
  }

  @override
  String toString() {
    return 'OperationCollection[items=$items, ]';
  }
}
