part of keyclic_sdk_api.api;

class DeviceLinksPersonIriTemplate {
  DeviceLinksPersonIriTemplate({
    this.mapping,
  });

  DeviceLinksPersonIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping =
        DelegationLinksCreatedByIriTemplateMapping.fromJson(json['mapping']);
  }

  DelegationLinksCreatedByIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is DeviceLinksPersonIriTemplate &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'DeviceLinksPersonIriTemplate[mapping=$mapping, ]';
  }

  static List<DeviceLinksPersonIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? List<DeviceLinksPersonIriTemplate>()
        : json
            .map((value) => DeviceLinksPersonIriTemplate.fromJson(value))
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
}
