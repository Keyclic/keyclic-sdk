part of keyclic_sdk_api.api;

class OrganizationPreferences {
  OrganizationPreferences({
    this.categoryRequired,
    this.form,
    this.offline,
    this.public,
    this.reference,
    this.reviewEnabled,
  });

  factory OrganizationPreferences.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OrganizationPreferences(
      categoryRequired: json['categoryRequired'],
      form: PreferencesForm.fromJson(json['form']),
      offline: json['offline'],
      public: json['public'],
      reference: PreferencesReference.fromJson(json['reference']),
      reviewEnabled: json['reviewEnabled'],
    );
  }

  bool categoryRequired;

  PreferencesForm form;

  bool offline;

  bool public;

  PreferencesReference reference;

  bool reviewEnabled;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationPreferences &&
        runtimeType == other.runtimeType &&
        categoryRequired == other.categoryRequired &&
        form == other.form &&
        offline == other.offline &&
        public == other.public &&
        reference == other.reference &&
        reviewEnabled == other.reviewEnabled;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= categoryRequired?.hashCode ?? 0;
    hashCode ^= form?.hashCode ?? 0;
    hashCode ^= offline?.hashCode ?? 0;
    hashCode ^= public?.hashCode ?? 0;
    hashCode ^= reference?.hashCode ?? 0;
    hashCode ^= reviewEnabled?.hashCode ?? 0;

    return hashCode;
  }

  static List<OrganizationPreferences> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => OrganizationPreferences.fromJson(value))
            ?.toList() ??
        <OrganizationPreferences>[];
  }

  static Map<String, OrganizationPreferences> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, OrganizationPreferences>((String key, dynamic value) {
          return MapEntry(key, OrganizationPreferences.fromJson(value));
        }) ??
        <String, OrganizationPreferences>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'categoryRequired': categoryRequired,
      'form': form?.toJson(),
      'offline': offline,
      'public': public,
      'reference': reference?.toJson(),
      'reviewEnabled': reviewEnabled,
    };
  }

  @override
  String toString() {
    return 'OrganizationPreferences[categoryRequired=$categoryRequired, form=$form, offline=$offline, public=$public, reference=$reference, reviewEnabled=$reviewEnabled, ]';
  }
}
