part of keyclic_sdk_api.api;

class ExternalServiceCollection {
  ExternalServiceCollection({
    this.items,
  });

  ExternalServiceCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    items = ExternalService.listFromJson(json['items']);
  }

  List<ExternalService> items;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExternalServiceCollection &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      items.map((dynamic element) => element.hashCode).fold(0,
          (dynamic value, dynamic cursor) => value.hashCode ^ cursor.hashCode);

  static List<ExternalServiceCollection> listFromJson(List<dynamic> json) {
    return json == null
        ? <ExternalServiceCollection>[]
        : json
            .map((value) => ExternalServiceCollection.fromJson(value))
            .toList();
  }

  static Map<String, ExternalServiceCollection> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ExternalServiceCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ExternalServiceCollection.fromJson(value));
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
    return 'ExternalServiceCollection[items=$items, ]';
  }
}
