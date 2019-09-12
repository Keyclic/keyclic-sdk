part of keyclic_sdk_api.api;

class OrganizationCollection {
  OrganizationCollection({
    this.items,
  });

  OrganizationCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    items = Organization.listFromJson(json['items']);
  }

  List<Organization> items;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationCollection &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (items is List && items.isNotEmpty) {
      hashCode ^= items
          .map((Organization element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<OrganizationCollection> listFromJson(List<dynamic> json) {
    return json == null
        ? <OrganizationCollection>[]
        : json
            .map((dynamic value) => OrganizationCollection.fromJson(value))
            .toList();
  }

  static Map<String, OrganizationCollection> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OrganizationCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OrganizationCollection.fromJson(value));
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
    return 'OrganizationCollection[items=$items, ]';
  }
}
