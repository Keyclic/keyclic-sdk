part of keyclic_sdk_api.api;

class ServiceCollection {
  ServiceCollection({
    this.items,
  });

  ServiceCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    items = Service.listFromJson(json['items']);
  }

  List<Service> items;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ServiceCollection &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      items.map((dynamic element) => element.hashCode).fold(0,
          (dynamic value, dynamic cursor) => value.hashCode ^ cursor.hashCode);

  static List<ServiceCollection> listFromJson(List<dynamic> json) {
    return json == null
        ? <ServiceCollection>[]
        : json.map((value) => ServiceCollection.fromJson(value)).toList();
  }

  static Map<String, ServiceCollection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ServiceCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ServiceCollection.fromJson(value));
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
    return 'ServiceCollection[items=$items, ]';
  }
}
