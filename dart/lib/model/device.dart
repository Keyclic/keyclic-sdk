part of keyclic_sdk_api.api;

class Device {
  Device();

  Device.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    id = json['id'];
    type = json['type'];
    links = DeviceLinks.fromJson(json['_links']);
  }

  String id;

  String type;

  DeviceLinks links;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      '_links': links,
    };
  }

  @override
  String toString() {
    return 'Device[id=$id, type=$type, links=$links, ]';
  }

  static List<Device> listFromJson(List<dynamic> json) {
    return json == null ? List<Device>() : json.map((value) => Device.fromJson(value)).toList();
  }

  static Map<String, Device> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Device>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Device.fromJson(value));
    }
    return map;
  }
}
