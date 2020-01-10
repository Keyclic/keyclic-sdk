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
      mapping: ContributionLinksContributorIriTemplateMapping.fromJson(
          json['mapping']),
    );
  }

  ContributionLinksContributorIriTemplateMapping mapping;

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
    return json == null
        ? <DeviceLinksPersonIriTemplate>[]
        : json
            .map(
                (dynamic value) => DeviceLinksPersonIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, DeviceLinksPersonIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DeviceLinksPersonIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DeviceLinksPersonIriTemplate.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'DeviceLinksPersonIriTemplate[mapping=$mapping, ]';
  }
}
