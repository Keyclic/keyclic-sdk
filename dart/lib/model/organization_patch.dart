part of keyclic_sdk_api.api;

class OrganizationPatch {
  OrganizationPatch();

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

  static List<OrganizationPatch> listFromJson(List<dynamic> json) {
    return json == null
        ? List<OrganizationPatch>()
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
}
