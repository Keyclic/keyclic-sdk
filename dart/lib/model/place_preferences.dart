part of keyclic_sdk_api.api;

class PlacePreferences {
  PlacePreferences({
    this.public,
  });

  factory PlacePreferences.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlacePreferences(
      public: json['public'],
    );
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
  int get hashCode {
    int hashCode = 0;

    hashCode ^= public?.hashCode ?? 0;

    return hashCode;
  }

  static List<PlacePreferences> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PlacePreferences.fromJson(value))
            ?.toList() ??
        <PlacePreferences>[];
  }

  static Map<String, PlacePreferences> mapFromJson(Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, PlacePreferences.fromJson(value));
        }) ??
        <String, PlacePreferences>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (public != null) 'public': public,
    };
  }

  @override
  String toString() {
    return 'PlacePreferences[public=$public, ]';
  }
}
