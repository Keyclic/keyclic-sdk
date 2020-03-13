part of keyclic_sdk_api.api;

class ExternalServiceCollection {
  ExternalServiceCollection({
    this.items,
  });

  factory ExternalServiceCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ExternalServiceCollection(
      items: ExternalService.listFromJson(json['items']),
    );
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
  int get hashCode {
    int hashCode = 0;

    if (items is List && items.isNotEmpty) {
      hashCode ^= items
          .map((ExternalService element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<ExternalServiceCollection> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ExternalServiceCollection.fromJson(value))
            ?.toList() ??
        <ExternalServiceCollection>[];
  }

  static Map<String, ExternalServiceCollection> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ExternalServiceCollection>(
            (String key, dynamic value) {
          return MapEntry(key, ExternalServiceCollection.fromJson(value));
        }) ??
        <String, ExternalServiceCollection>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (items != null) 'items': items,
    };
  }

  @override
  String toString() {
    return 'ExternalServiceCollection[items=$items, ]';
  }
}
