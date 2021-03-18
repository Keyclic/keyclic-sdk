part of keyclic_sdk_api.api;

class DeviceLinksPersonIriTemplate {
  DeviceLinksPersonIriTemplate({
    this.mapping,
  });

  factory DeviceLinksPersonIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DeviceLinksPersonIriTemplate(
      mapping:
          AssignmentLinksCreatedByIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  AssignmentLinksCreatedByIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DeviceLinksPersonIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= mapping?.hashCode ?? 0;

    return hashCode;
  }

  static List<DeviceLinksPersonIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map(
                (dynamic value) => DeviceLinksPersonIriTemplate.fromJson(value))
            ?.toList() ??
        <DeviceLinksPersonIriTemplate>[];
  }

  static Map<String, DeviceLinksPersonIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, DeviceLinksPersonIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, DeviceLinksPersonIriTemplate.fromJson(value));
        }) ??
        <String, DeviceLinksPersonIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'DeviceLinksPersonIriTemplate[mapping=$mapping, ]';
  }
}
