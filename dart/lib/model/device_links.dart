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
    if (identical(this, other)) {
      return true;
    }

    return other is DeviceLinks && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<DeviceLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? List<DeviceLinks>()
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
