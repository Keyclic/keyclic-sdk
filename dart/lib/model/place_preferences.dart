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
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlacePreferences &&
        runtimeType == other.runtimeType &&
        public == other.public;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ public.hashCode;

  static List<PlacePreferences> listFromJson(List<dynamic> json) {
    return json == null
        ? <PlacePreferences>[]
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

  Map<String, dynamic> toJson() {
    return {
      'public': public,
    };
  }

  @override
  String toString() {
    return 'PlacePreferences[public=$public, ]';
  }
}
