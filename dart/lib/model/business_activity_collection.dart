part of keyclic_sdk_api.api;

class BusinessActivityCollection {
  BusinessActivityCollection({
    this.items,
  });

  BusinessActivityCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    items = BusinessActivity.listFromJson(json['items']);
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
  int get hashCode =>
      0 ^
      items.map((dynamic element) => element.hashCode).fold(0,
          (dynamic value, dynamic cursor) => value.hashCode ^ cursor.hashCode);

  static List<BusinessActivityCollection> listFromJson(List<dynamic> json) {
    return json == null
        ? <BusinessActivityCollection>[]
        : json
            .map((value) => BusinessActivityCollection.fromJson(value))
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
      'items': items,
    };
  }

  @override
  String toString() {
    return 'BusinessActivityCollection[items=$items, ]';
  }
}
