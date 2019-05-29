part of keyclic_sdk_api.api;

class OccupantCollection {
  OccupantCollection();

  OccupantCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    items = Occupant.listFromJson(json['items']);
  }

  List<Occupant> items;

  Map<String, dynamic> toJson() {
    return {
      'items': items,
    };
  }

  @override
  String toString() {
    return 'OccupantCollection[items=$items, ]';
  }

  static List<OccupantCollection> listFromJson(List<dynamic> json) {
    return json == null ? List<OccupantCollection>() : json.map((value) => OccupantCollection.fromJson(value)).toList();
  }

  static Map<String, OccupantCollection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, OccupantCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = OccupantCollection.fromJson(value));
    }
    return map;
  }
}
