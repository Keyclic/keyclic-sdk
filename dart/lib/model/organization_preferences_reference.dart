part of keyclic_sdk_api.api;

class OrganizationPreferencesReference {
  OrganizationPreferencesReference();

  OrganizationPreferencesReference.fromJson(Map<String, dynamic> json) {
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
    return 'OrganizationPreferencesReference[prefix=$prefix, ]';
  }

  static List<OrganizationPreferencesReference> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<OrganizationPreferencesReference>()
        : json
            .map((value) => OrganizationPreferencesReference.fromJson(value))
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
}
