// @dart=2.10
part of keyclic_sdk_api.api;

class OccupantCollection {
  OccupantCollection({
    this.items,
  });

  factory OccupantCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OccupantCollection(
      items: Occupant.listFromJson(json['items']),
    );
  }

  List<Occupant> items;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantCollection &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (items is List && items.isNotEmpty) {
      hashCode ^= items
          .map((Occupant element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<OccupantCollection> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => OccupantCollection.fromJson(value))
            ?.toList() ??
        <OccupantCollection>[];
  }

  static Map<String, OccupantCollection> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, OccupantCollection>((String key, dynamic value) {
          return MapEntry(key, OccupantCollection.fromJson(value));
        }) ??
        <String, OccupantCollection>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (items != null) 'items': items,
    };
  }

  @override
  String toString() {
    return 'OccupantCollection[items=$items, ]';
  }
}
