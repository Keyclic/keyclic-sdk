part of keyclic_sdk_api.api;

class DeviceLinksSelfIriTemplateMapping {
  DeviceLinksSelfIriTemplateMapping({
    this.device,
  });

  DeviceLinksSelfIriTemplateMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    device = json['device'];
  }

  String device;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DeviceLinksSelfIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        device == other.device;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= device?.hashCode ?? 0;

    return hashCode;
  }

  static List<DeviceLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <DeviceLinksSelfIriTemplateMapping>[]
        : json
            .map((dynamic value) =>
                DeviceLinksSelfIriTemplateMapping.fromJson(value))
            .toList();
  }

  static Map<String, DeviceLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DeviceLinksSelfIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DeviceLinksSelfIriTemplateMapping.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'device': device,
    };
  }

  @override
  String toString() {
    return 'DeviceLinksSelfIriTemplateMapping[device=$device, ]';
  }
}
