part of keyclic_sdk_api.api;

class BusinessActivityCollection {
  BusinessActivityCollection({
    this.items,
  });

  factory BusinessActivityCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BusinessActivityCollection(
      items: BusinessActivity.listFromJson(json['items']),
    );
  }

  List<BusinessActivity> items;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessActivityCollection &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (items is List && items.isNotEmpty) {
      hashCode ^= items
          .map((BusinessActivity element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<BusinessActivityCollection> listFromJson(List<dynamic> json) {
    return json == null
        ? <BusinessActivityCollection>[]
        : json
            .map((dynamic value) => BusinessActivityCollection.fromJson(value))
            .toList();
  }

  static Map<String, BusinessActivityCollection> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, BusinessActivityCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = BusinessActivityCollection.fromJson(value));
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
    return 'BusinessActivityCollection[items=$items, ]';
  }
}
