part of keyclic_sdk_api.api;

class BinaryCollection {
  BinaryCollection({
    this.items,
  });

  factory BinaryCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BinaryCollection(
      items: Binary.listFromJson(json['items']),
    );
  }

  List<Binary> items;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BinaryCollection &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (items is List && items.isNotEmpty) {
      hashCode ^= items
          .map((Binary element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<BinaryCollection> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => BinaryCollection.fromJson(value))
            ?.toList() ??
        <BinaryCollection>[];
  }

  static Map<String, BinaryCollection> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, BinaryCollection>((String key, dynamic value) {
          return MapEntry(key, BinaryCollection.fromJson(value));
        }) ??
        <String, BinaryCollection>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (items != null) 'items': items,
    };
  }

  @override
  String toString() {
    return 'BinaryCollection[items=$items, ]';
  }
}
