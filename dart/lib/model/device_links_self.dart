part of keyclic_sdk_api.api;

class DeviceLinksSelf {
  DeviceLinksSelf({
    this.href,
    this.iriTemplate,
  });

  DeviceLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = DeviceLinksSelfIriTemplate.fromJson(json['iriTemplate']);
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
    return json == null
        ? <DeviceLinksSelf>[]
        : json.map((dynamic value) => DeviceLinksSelf.fromJson(value)).toList();
  }

  static Map<String, DeviceLinksSelf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeviceLinksSelf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DeviceLinksSelf.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'DeviceLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
