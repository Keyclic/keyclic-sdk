part of keyclic_sdk_api.api;

class OrganizationPatchPreferencesReference {
  OrganizationPatchPreferencesReference({
    this.prefix,
  });

  OrganizationPatchPreferencesReference.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    prefix = json['prefix'];
  }

  String prefix;

  Map<String, dynamic> toJson() {
    return {
      'prefix': prefix,
    };
  }

  @override
  String toString() {
    return 'OrganizationPatchPreferencesReference[prefix=$prefix, ]';
  }

  static List<OrganizationPatchPreferencesReference> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<OrganizationPatchPreferencesReference>()
        : json
            .map((value) =>
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
}
