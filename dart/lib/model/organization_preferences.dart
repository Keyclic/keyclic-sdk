part of keyclic_sdk_api.api;

class OrganizationPreferences {
  OrganizationPreferences({
    this.public,
    this.reference,
    this.reviewEnabled,
  });

  OrganizationPreferences.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    public = json['public'];
    reference = OrganizationPreferencesReference.fromJson(json['reference']);
    reviewEnabled = json['reviewEnabled'];
  }

  bool public;

  OrganizationPreferencesReference reference;

  bool reviewEnabled;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationPreferences &&
        runtimeType == other.runtimeType &&
        public == other.public;
  }

  @override
  int get hashCode => 0 ^ public.hashCode;

  static List<OrganizationPreferences> listFromJson(List<dynamic> json) {
    return json == null
        ? List<OrganizationPreferences>()
        : json.map((value) => OrganizationPreferences.fromJson(value)).toList();
  }

  static Map<String, OrganizationPreferences> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OrganizationPreferences>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OrganizationPreferences.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'public': public,
      'reference': reference,
      'reviewEnabled': reviewEnabled,
    };
  }

  @override
  String toString() {
    return 'OrganizationPreferences[public=$public, reference=$reference, reviewEnabled=$reviewEnabled, ]';
  }
}
