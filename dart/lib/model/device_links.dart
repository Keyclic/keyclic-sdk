part of keyclic_sdk_api.api;

class DeviceLinks {
  DeviceLinks();

  DeviceLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    person = DeviceLinksPerson.fromJson(json['person']);
  }

  DeviceLinksPerson person;

  Map<String, dynamic> toJson() {
    return {
      'person': person,
    };
  }

  @override
  String toString() {
    return 'DeviceLinks[person=$person, ]';
  }

  static List<DeviceLinks> listFromJson(List<dynamic> json) {
    return json == null ? List<DeviceLinks>() : json.map((value) => DeviceLinks.fromJson(value)).toList();
  }

  static Map<String, DeviceLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeviceLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DeviceLinks.fromJson(value));
    }
    return map;
  }
}
