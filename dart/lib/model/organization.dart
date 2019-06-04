part of keyclic_sdk_api.api;

class Organization {
  Organization({
    this.alternateName,
    this.billingEmailAddress,
    this.description,
    this.name,
    this.notificationEmailAddress,
    this.preferences,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.type,
    this.isEnabled,
    this.enabled,
    this.links,
  });

  Organization.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    alternateName = json['alternateName'];
    billingEmailAddress = json['billingEmailAddress'];
    description = json['description'];
    name = json['name'];
    notificationEmailAddress = json['notificationEmailAddress'];
    preferences = OrganizationPreferences.fromJson(json['preferences']);
    id = json['id'];
    createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }
    updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }
    type = json['type'];
    isEnabled = json['isEnabled'];
    enabled = json['enabled'];
    links = OrganizationLinks.fromJson(json['_links']);
  }

  String alternateName;

  String billingEmailAddress;

  String description;

  String name;

  String notificationEmailAddress;

  OrganizationPreferences preferences;

  String id;

  DateTime createdAt;

  DateTime updatedAt;

  String type;

  bool isEnabled;

  bool enabled;

  OrganizationLinks links;

  Map<String, dynamic> toJson() {
    return {
      'alternateName': alternateName,
      'billingEmailAddress': billingEmailAddress,
      'description': description,
      'name': name,
      'notificationEmailAddress': notificationEmailAddress,
      'preferences': preferences,
      'id': id,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updatedAt': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'type': type,
      'isEnabled': isEnabled,
      'enabled': enabled,
      '_links': links,
    };
  }

  @override
  String toString() {
    return 'Organization[alternateName=$alternateName, billingEmailAddress=$billingEmailAddress, description=$description, name=$name, notificationEmailAddress=$notificationEmailAddress, preferences=$preferences, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, type=$type, isEnabled=$isEnabled, enabled=$enabled, links=$links, ]';
  }

  static List<Organization> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Organization>()
        : json.map((value) => Organization.fromJson(value)).toList();
  }

  static Map<String, Organization> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Organization>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = Organization.fromJson(value));
    }
    return map;
  }
}
