part of keyclic_sdk_api.api;

class DeviceLinksSelf {
  DeviceLinksSelf({
    this.href,
    this.iriTemplate,
  });

  factory DeviceLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DeviceLinksSelf(
      href: json['href'],
      iriTemplate: DeviceLinksSelfIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the self associated to the given device. */
  String href;

  DeviceLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DeviceLinksSelf &&
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

  static List<DeviceLinksSelf> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => DeviceLinksSelf.fromJson(value))
            ?.toList() ??
        <DeviceLinksSelf>[];
  }

  static Map<String, DeviceLinksSelf> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, DeviceLinksSelf>((String key, dynamic value) {
          return MapEntry(key, DeviceLinksSelf.fromJson(value));
        }) ??
        <String, DeviceLinksSelf>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'DeviceLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
