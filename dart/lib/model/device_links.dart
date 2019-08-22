part of keyclic_sdk_api.api;

class DeviceLinks {
  DeviceLinks({
    this.person,
  });

  DeviceLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    person = DeviceLinksPerson.fromJson(json['person']);
  }

  DeviceLinksPerson person;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DeviceLinks &&
        runtimeType == other.runtimeType &&
        person == other.person;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ person.hashCode;

  static List<DeviceLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? <DeviceLinks>[]
        : json.map((value) => DeviceLinks.fromJson(value)).toList();
  }

  static Map<String, DeviceLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeviceLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DeviceLinks.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'person': person,
    };
  }

  @override
  String toString() {
    return 'DeviceLinks[person=$person, ]';
  }
}
