part of keyclic_sdk_api.api;

class Organization {
  Organization({
    this.links,
    this.alternateName,
    this.billingEmailAddress,
    this.createdAt,
    this.description,
    this.enabled,
    this.id,
    this.name,
    this.notificationEmailAddress,
    this.preferences,
    this.type,
    this.updatedAt,
  });

  Organization.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    links = OrganizationLinks.fromJson(json['_links']);
    alternateName = json['alternateName'];
    billingEmailAddress = json['billingEmailAddress'];
    createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }
    description = json['description'];
    enabled = json['enabled'];
    id = json['id'];
    name = json['name'];
    notificationEmailAddress = json['notificationEmailAddress'];
    preferences = OrganizationPreferences.fromJson(json['preferences']);
    type = json['type'];
    updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }
  }

  OrganizationLinks links;

  String alternateName;

  String billingEmailAddress;

  DateTime createdAt;

  String description;

  bool enabled;

  String id;

  String name;

  String notificationEmailAddress;

  OrganizationPreferences preferences;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is Organization &&
        runtimeType == other.runtimeType &&
        name == other.name;
  }

  @override
  int get hashCode => 0 ^ name.hashCode;

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

  Map<String, dynamic> toJson() {
    return {
      '_links': links,
      'alternateName': alternateName,
      'billingEmailAddress': billingEmailAddress,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'description': description,
      'enabled': enabled,
      'id': id,
      'name': name,
      'notificationEmailAddress': notificationEmailAddress,
      'preferences': preferences,
      'type': type,
      'updatedAt': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Organization[links=$links, alternateName=$alternateName, billingEmailAddress=$billingEmailAddress, createdAt=$createdAt, description=$description, enabled=$enabled, id=$id, name=$name, notificationEmailAddress=$notificationEmailAddress, preferences=$preferences, type=$type, updatedAt=$updatedAt, ]';
  }
}
