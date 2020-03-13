part of keyclic_sdk_api.api;

class Configuration {
  Configuration({
    this.links,
    this.createdAt,
    this.delegationType,
    this.description,
    this.id,
    this.memberType,
    this.name,
    this.operationType,
    this.reportType,
    this.type,
    this.updatedAt,
  });

  factory Configuration.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    DateTime createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }

    DateTime updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }

    return Configuration(
      links: ConfigurationLinks.fromJson(json['_links']),
      createdAt: createdAt,
      delegationType:
          ConfigurationDelegationType.fromJson(json['delegationType']),
      description: json['description'],
      id: json['id'],
      memberType: ConfigurationMemberType.fromJson(json['memberType']),
      name: json['name'],
      operationType: ConfigurationOperationType.fromJson(json['operationType']),
      reportType: ConfigurationReportType.fromJson(json['reportType']),
      type: json['type'],
      updatedAt: updatedAt,
    );
  }

  ConfigurationLinks links;

  DateTime createdAt;

  ConfigurationDelegationType delegationType;

  String description;

  String id;

  ConfigurationMemberType memberType;

  String name;

  ConfigurationOperationType operationType;

  ConfigurationReportType reportType;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Configuration &&
        runtimeType == other.runtimeType &&
        links == other.links &&
        createdAt == other.createdAt &&
        delegationType == other.delegationType &&
        description == other.description &&
        id == other.id &&
        memberType == other.memberType &&
        name == other.name &&
        operationType == other.operationType &&
        reportType == other.reportType &&
        type == other.type &&
        updatedAt == other.updatedAt;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= links?.hashCode ?? 0;
    hashCode ^= createdAt?.hashCode ?? 0;
    hashCode ^= delegationType?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= memberType?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= operationType?.hashCode ?? 0;
    hashCode ^= reportType?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= updatedAt?.hashCode ?? 0;

    return hashCode;
  }

  static List<Configuration> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => Configuration.fromJson(value))
            ?.toList() ??
        <Configuration>[];
  }

  static Map<String, Configuration> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, Configuration>((String key, dynamic value) {
          return MapEntry(key, Configuration.fromJson(value));
        }) ??
        <String, Configuration>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (links != null) '_links': links.toJson(),
      if (createdAt != null) 'createdAt': createdAt.toUtc().toIso8601String(),
      if (delegationType != null) 'delegationType': delegationType.toJson(),
      if (description != null) 'description': description,
      if (id != null) 'id': id,
      if (memberType != null) 'memberType': memberType.toJson(),
      if (name != null) 'name': name,
      if (operationType != null) 'operationType': operationType.toJson(),
      if (reportType != null) 'reportType': reportType.toJson(),
      if (type != null) 'type': type,
      if (updatedAt != null) 'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Configuration[links=$links, createdAt=$createdAt, delegationType=$delegationType, description=$description, id=$id, memberType=$memberType, name=$name, operationType=$operationType, reportType=$reportType, type=$type, updatedAt=$updatedAt, ]';
  }
}
