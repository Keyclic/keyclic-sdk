part of keyclic_sdk_api.api;

class OrganizationPatchPreferencesReference {
  OrganizationPatchPreferencesReference({
    this.prefix,
  });

  factory OrganizationPatchPreferencesReference.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OrganizationPatchPreferencesReference(
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

    return other is OrganizationPatchPreferencesReference &&
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

  static List<OrganizationPatchPreferencesReference> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <OrganizationPatchPreferencesReference>[]
        : json
            .map((dynamic value) =>
                OrganizationPatchPreferencesReference.fromJson(value))
            .toList();
  }

  static Map<String, OrganizationPatchPreferencesReference> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OrganizationPatchPreferencesReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OrganizationPatchPreferencesReference.fromJson(value));
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
    return 'OrganizationPatchPreferencesReference[prefix=$prefix, ]';
  }
}
