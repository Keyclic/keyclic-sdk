part of keyclic_sdk_api.api;

class DeviceLinksSelfIriTemplate {
  DeviceLinksSelfIriTemplate({
    this.mapping,
  });

  factory DeviceLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DeviceLinksSelfIriTemplate(
      mapping: DeviceLinksSelfIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  DeviceLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DeviceLinksSelfIriTemplate &&
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

  static List<DeviceLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => DeviceLinksSelfIriTemplate.fromJson(value))
            ?.toList() ??
        <DeviceLinksSelfIriTemplate>[];
  }

  static Map<String, DeviceLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, DeviceLinksSelfIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, DeviceLinksSelfIriTemplate.fromJson(value));
        }) ??
        <String, DeviceLinksSelfIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping?.toJson(),
    };
  }

  @override
  String toString() {
    return 'DeviceLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
