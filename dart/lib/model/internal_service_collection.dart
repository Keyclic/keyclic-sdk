part of keyclic_sdk_api.api;

class InternalServiceCollection {
  InternalServiceCollection({
    this.items,
  });

  InternalServiceCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    items = InternalService.listFromJson(json['items']);
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
    return json == null
        ? <InternalServiceCollection>[]
        : json
            .map((dynamic value) => InternalServiceCollection.fromJson(value))
            .toList();
  }

  static Map<String, InternalServiceCollection> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, InternalServiceCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = InternalServiceCollection.fromJson(value));
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
    return 'InternalServiceCollection[items=$items, ]';
  }
}
