part of keyclic_sdk_api.api;

class DeviceLinksPerson {
  DeviceLinksPerson({
    this.href,
    this.iriTemplate,
  });

  factory DeviceLinksPerson.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DeviceLinksPerson(
      href: json['href'],
      iriTemplate: DeviceLinksPersonIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the person associated to the given device. */
  String href;

  DeviceLinksPersonIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DeviceLinksPerson &&
        runtimeType == other.runtimeType &&
        href == other.href &&
        iriTemplate == other.iriTemplate;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= href?.hashCode ?? 0;
    hashCode ^= iriTemplate?.hashCode ?? 0;

    return hashCode;
  }

  static List<DeviceLinksPerson> listFromJson(List<dynamic> json) {
    return json == null
        ? <DeviceLinksPerson>[]
        : json
            .map((dynamic value) => DeviceLinksPerson.fromJson(value))
            .toList();
  }

  static Map<String, DeviceLinksPerson> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeviceLinksPerson>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DeviceLinksPerson.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'DeviceLinksPerson[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
