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
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationPreferences &&
        runtimeType == other.runtimeType &&
        public == other.public &&
        reference == other.reference &&
        reviewEnabled == other.reviewEnabled;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= (public?.hashCode ?? 0);
    hashCode ^= (reference?.hashCode ?? 0);
    hashCode ^= (reviewEnabled?.hashCode ?? 0);

    return hashCode;
  }

  static List<OrganizationPreferences> listFromJson(List<dynamic> json) {
    return json == null
        ? <OrganizationPreferences>[]
        : json
            .map((dynamic value) => OrganizationPreferences.fromJson(value))
            .toList();
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
