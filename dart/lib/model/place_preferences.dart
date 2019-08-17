part of keyclic_sdk_api.api;

class PlacePreferences {
  PlacePreferences({
    this.public,
  });

  PlacePreferences.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    public = json['public'];
  }

  bool public;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is PlacePreferences && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'public': public,
    };
  }

  @override
  String toString() {
    return 'PlacePreferences[public=$public, ]';
  }

  static List<PlacePreferences> listFromJson(List<dynamic> json) {
    return json == null
        ? List<PlacePreferences>()
        : json.map((value) => PlacePreferences.fromJson(value)).toList();
  }

  static Map<String, PlacePreferences> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PlacePreferences>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PlacePreferences.fromJson(value));
    }
    return map;
  }
}
