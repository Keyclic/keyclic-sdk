// @dart=2.10
part of keyclic_sdk_api.api;

class PropertyItems {
  PropertyItems({
    this.oneOf,
  });

  factory PropertyItems.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PropertyItems(
      oneOf: ItemsChoice.listFromJson(json['oneOf']),
    );
  }

  List<ItemsChoice> oneOf;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PropertyItems &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(oneOf, other.oneOf);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (oneOf is List && oneOf.isNotEmpty) {
      hashCode ^= oneOf
          .map((ItemsChoice element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<PropertyItems> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PropertyItems.fromJson(value))
            ?.toList() ??
        <PropertyItems>[];
  }

  static Map<String, PropertyItems> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, PropertyItems>((String key, dynamic value) {
          return MapEntry(key, PropertyItems.fromJson(value));
        }) ??
        <String, PropertyItems>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (oneOf != null) 'oneOf': oneOf,
    };
  }

  @override
  String toString() {
    return 'PropertyItems[oneOf=$oneOf, ]';
  }
}
