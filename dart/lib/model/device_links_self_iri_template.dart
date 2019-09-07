part of keyclic_sdk_api.api;

class DeviceLinksSelfIriTemplate {
  DeviceLinksSelfIriTemplate({
    this.mapping,
  });

  DeviceLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = DeviceLinksSelfIriTemplateMapping.fromJson(json['mapping']);
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
  int get hashCode => 0 ^ mapping.hashCode;

  static List<DeviceLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? <DeviceLinksSelfIriTemplate>[]
        : json
            .map((value) => DeviceLinksSelfIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, DeviceLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DeviceLinksSelfIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DeviceLinksSelfIriTemplate.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'DeviceLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
