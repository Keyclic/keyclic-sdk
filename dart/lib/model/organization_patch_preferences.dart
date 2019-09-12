part of keyclic_sdk_api.api;

class OrganizationPatchPreferences {
  OrganizationPatchPreferences({
    this.reference,
  });

  OrganizationPatchPreferences.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    reference = OrganizationPreferencesReference.fromJson(json['reference']);
  }

  OrganizationPreferencesReference reference;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationPatchPreferences &&
        runtimeType == other.runtimeType &&
        reference == other.reference;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= (reference?.hashCode ?? 0);

    return hashCode;
  }

  static List<OrganizationPatchPreferences> listFromJson(List<dynamic> json) {
    return json == null
        ? <OrganizationPatchPreferences>[]
        : json
            .map(
                (dynamic value) => OrganizationPatchPreferences.fromJson(value))
            .toList();
  }

  static Map<String, OrganizationPatchPreferences> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OrganizationPatchPreferences>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OrganizationPatchPreferences.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'reference': reference,
    };
  }

  @override
  String toString() {
    return 'OrganizationPatchPreferences[reference=$reference, ]';
  }
}
