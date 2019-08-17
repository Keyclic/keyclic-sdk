part of keyclic_sdk_api.api;

class PlaceCollection {
  PlaceCollection({
    this.items,
  });

  PlaceCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    items = Place.listFromJson(json['items']);
  }

  List<Place> items;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceCollection && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<PlaceCollection> listFromJson(List<dynamic> json) {
    return json == null
        ? List<PlaceCollection>()
        : json.map((value) => PlaceCollection.fromJson(value)).toList();
  }

  static Map<String, PlaceCollection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PlaceCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PlaceCollection.fromJson(value));
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
    return 'PlaceCollection[items=$items, ]';
  }
}
