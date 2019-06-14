part of keyclic_sdk_api.api;

class DeviceLinksPerson {
  DeviceLinksPerson({
    this.href,
    this.iriTemplate,
  });

  DeviceLinksPerson.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        DelegationLinksCreatedByIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the person associated to the given device. */
  String href;

  DelegationLinksCreatedByIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is DeviceLinksPerson && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'DeviceLinksPerson[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<DeviceLinksPerson> listFromJson(List<dynamic> json) {
    return json == null
        ? List<DeviceLinksPerson>()
        : json.map((value) => DeviceLinksPerson.fromJson(value)).toList();
  }

  static Map<String, DeviceLinksPerson> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeviceLinksPerson>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DeviceLinksPerson.fromJson(value));
    }
    return map;
  }
}
