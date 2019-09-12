part of keyclic_sdk_api.api;

class OccupantCollection {
  OccupantCollection({
    this.items,
  });

  OccupantCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    items = Occupant.listFromJson(json['items']);
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
    return json == null
        ? <OccupantCollection>[]
        : json
            .map((dynamic value) => OccupantCollection.fromJson(value))
            .toList();
  }

  static Map<String, OccupantCollection> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OccupantCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OccupantCollection.fromJson(value));
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
    return 'OccupantCollection[items=$items, ]';
  }
}
