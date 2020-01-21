part of keyclic_sdk_api.api;

class PreferencesReference {
  PreferencesReference({
    this.prefix,
  });

  factory PreferencesReference.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PreferencesReference(
      prefix: json['prefix'],
    );
  }

  String prefix;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PreferencesReference &&
        runtimeType == other.runtimeType &&
        prefix == other.prefix;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= prefix?.hashCode ?? 0;

    return hashCode;
  }

  static List<PreferencesReference> listFromJson(List<dynamic> json) {
    return json == null
        ? <PreferencesReference>[]
        : json
            .map((dynamic value) => PreferencesReference.fromJson(value))
            .toList();
  }

  static Map<String, PreferencesReference> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PreferencesReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PreferencesReference.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (prefix != null) 'prefix': prefix,
    };
  }

  @override
  String toString() {
    return 'PreferencesReference[prefix=$prefix, ]';
  }
}
