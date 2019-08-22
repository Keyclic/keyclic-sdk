part of keyclic_sdk_api.api;

class OrganizationPatch {
  OrganizationPatch({
    this.name,
    this.alternateName,
    this.description,
    this.logo,
    this.billingEmailAddress,
    this.notificationEmailAddress,
    this.preferences,
  });

  OrganizationPatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    name = json['name'];
    alternateName = json['alternateName'];
    description = json['description'];
    logo = json['logo'];
    billingEmailAddress = json['billingEmailAddress'];
    notificationEmailAddress = json['notificationEmailAddress'];
    preferences = OrganizationPatchPreferences.fromJson(json['preferences']);
  }

  String name;

  String alternateName;

  String description;

  String logo;

  String billingEmailAddress;

  String notificationEmailAddress;

  OrganizationPatchPreferences preferences;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationPatch &&
        runtimeType == other.runtimeType &&
        name == other.name &&
        alternateName == other.alternateName &&
        description == other.description &&
        logo == other.logo &&
        billingEmailAddress == other.billingEmailAddress &&
        notificationEmailAddress == other.notificationEmailAddress &&
        preferences == other.preferences;
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      name.hashCode ^
      alternateName.hashCode ^
      description.hashCode ^
      logo.hashCode ^
      billingEmailAddress.hashCode ^
      notificationEmailAddress.hashCode ^
      preferences.hashCode;

  static List<OrganizationPatch> listFromJson(List<dynamic> json) {
    return json == null
        ? <OrganizationPatch>[]
        : json.map((value) => OrganizationPatch.fromJson(value)).toList();
  }

  static Map<String, OrganizationPatch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, OrganizationPatch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OrganizationPatch.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'alternateName': alternateName,
      'description': description,
      'logo': logo,
      'billingEmailAddress': billingEmailAddress,
      'notificationEmailAddress': notificationEmailAddress,
      'preferences': preferences,
    };
  }

  @override
  String toString() {
    return 'OrganizationPatch[name=$name, alternateName=$alternateName, description=$description, logo=$logo, billingEmailAddress=$billingEmailAddress, notificationEmailAddress=$notificationEmailAddress, preferences=$preferences, ]';
  }
}
