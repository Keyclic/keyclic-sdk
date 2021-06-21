// @dart=2.10
part of keyclic_sdk_api.api;

class ServiceCollection {
  ServiceCollection({
    this.items,
  });

  factory ServiceCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ServiceCollection(
      items: Service.listFromJson(json['items']),
    );
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
  int get hashCode {
    int hashCode = 0;

    if (items is List && items.isNotEmpty) {
      hashCode ^= items
          .map((Service element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<ServiceCollection> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ServiceCollection.fromJson(value))
            ?.toList() ??
        <ServiceCollection>[];
  }

  static Map<String, ServiceCollection> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, ServiceCollection>((String key, dynamic value) {
          return MapEntry(key, ServiceCollection.fromJson(value));
        }) ??
        <String, ServiceCollection>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (items != null) 'items': items,
    };
  }

  @override
  String toString() {
    return 'ServiceCollection[items=$items, ]';
  }
}
