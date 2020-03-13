part of keyclic_sdk_api.api;

class DelegationCollection {
  DelegationCollection({
    this.items,
  });

  factory DelegationCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DelegationCollection(
      items: Delegation.listFromJson(json['items']),
    );
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
    return json
            ?.map((dynamic value) => DelegationCollection.fromJson(value))
            ?.toList() ??
        <DelegationCollection>[];
  }

  static Map<String, DelegationCollection> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, DelegationCollection>((String key, dynamic value) {
          return MapEntry(key, DelegationCollection.fromJson(value));
        }) ??
        <String, DelegationCollection>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (items != null) 'items': items,
    };
  }

  @override
  String toString() {
    return 'DelegationCollection[items=$items, ]';
  }
}
