part of keyclic_sdk_api.api;

class InternalServiceCollection {
  InternalServiceCollection({
    this.items,
  });

  factory InternalServiceCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InternalServiceCollection(
      items: InternalService.listFromJson(json['items']),
    );
  }

  List<InternalService> items;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServiceCollection &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (items is List && items.isNotEmpty) {
      hashCode ^= items
          .map((InternalService element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<InternalServiceCollection> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => InternalServiceCollection.fromJson(value))
            ?.toList() ??
        <InternalServiceCollection>[];
  }

  static Map<String, InternalServiceCollection> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, InternalServiceCollection.fromJson(value));
        }) ??
        <String, InternalServiceCollection>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (items != null) 'items': items,
    };
  }

  @override
  String toString() {
    return 'InternalServiceCollection[items=$items, ]';
  }
}
