part of keyclic_sdk_api.api;

class OrganizationPatchPreferences {
  OrganizationPatchPreferences({
    this.reference,
  });

  OrganizationPatchPreferences.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    reference =
        OrganizationPatchPreferencesReference.fromJson(json['reference']);
  }

  OrganizationPatchPreferencesReference reference;

  Map<String, dynamic> toJson() {
    return {
      'reference': reference,
    };
  }

  @override
  String toString() {
    return 'OrganizationPatchPreferences[reference=$reference, ]';
  }

  static List<OrganizationPatchPreferences> listFromJson(List<dynamic> json) {
    return json == null
        ? List<OrganizationPatchPreferences>()
        : json
            .map((value) => OrganizationPatchPreferences.fromJson(value))
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
}
