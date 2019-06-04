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

  Map<String, dynamic> toJson() {
    return {
      'items': items,
    };
  }

  @override
  String toString() {
    return 'PlaceCollection[items=$items, ]';
  }

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
}
