part of keyclic_sdk_api.api;

class DelegationCollection {
  DelegationCollection({
    this.items,
  });

  DelegationCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    items = Delegation.listFromJson(json['items']);
  }

  List<Delegation> items;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DelegationCollection &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (items is List && items.isNotEmpty) {
      hashCode ^= items
          .map((Delegation element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<DelegationCollection> listFromJson(List<dynamic> json) {
    return json == null
        ? <DelegationCollection>[]
        : json
            .map((dynamic value) => DelegationCollection.fromJson(value))
            .toList();
  }

  static Map<String, DelegationCollection> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DelegationCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DelegationCollection.fromJson(value));
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
    return 'DelegationCollection[items=$items, ]';
  }
}
