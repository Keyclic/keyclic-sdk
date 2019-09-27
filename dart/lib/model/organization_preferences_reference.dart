part of keyclic_sdk_api.api;

class OrganizationPreferencesReference {
  OrganizationPreferencesReference({
    this.prefix,
  });

  OrganizationPreferencesReference.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    prefix = json['prefix'];
  }

  String prefix;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationPreferencesReference &&
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

  static List<OrganizationPreferencesReference> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <OrganizationPreferencesReference>[]
        : json
            .map((dynamic value) =>
                OrganizationPreferencesReference.fromJson(value))
            .toList();
  }

  static Map<String, OrganizationPreferencesReference> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OrganizationPreferencesReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OrganizationPreferencesReference.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'prefix': prefix,
    };
  }

  @override
  String toString() {
    return 'OrganizationPreferencesReference[prefix=$prefix, ]';
  }
}
