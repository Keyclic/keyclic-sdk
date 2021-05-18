part of keyclic_sdk_api.api;

class DeviceLinksSelfIriTemplateMapping {
  DeviceLinksSelfIriTemplateMapping({
    this.device,
  });

  factory DeviceLinksSelfIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DeviceLinksSelfIriTemplateMapping(
      device: json['device'],
    );
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
    return json
            ?.map((dynamic value) =>
                DeviceLinksSelfIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <DeviceLinksSelfIriTemplateMapping>[];
  }

  static Map<String, DeviceLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, DeviceLinksSelfIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(
              key, DeviceLinksSelfIriTemplateMapping.fromJson(value));
        }) ??
        <String, DeviceLinksSelfIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (device != null) 'device': device,
    };
  }

  @override
  String toString() {
    return 'DeviceLinksSelfIriTemplateMapping[device=$device, ]';
  }
}
