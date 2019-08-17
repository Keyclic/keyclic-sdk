part of keyclic_sdk_api.api;

class Device {
  Device({
    this.links,
    this.id,
    this.type,
  });

  Device.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    links = DeviceLinks.fromJson(json['_links']);
    id = json['id'];
    type = json['type'];
  }

  DeviceLinks links;

  String id;

  String type;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is Device && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      '_links': links,
      'id': id,
      'type': type,
    };
  }

  @override
  String toString() {
    return 'Device[links=$links, id=$id, type=$type, ]';
  }

  static List<Device> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Device>()
        : json.map((value) => Device.fromJson(value)).toList();
  }

  static Map<String, Device> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Device>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Device.fromJson(value));
    }
    return map;
  }
}
