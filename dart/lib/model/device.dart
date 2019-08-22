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
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Device &&
        runtimeType == other.runtimeType &&
        links == other.links &&
        id == other.id &&
        type == other.type;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ links.hashCode ^ id.hashCode ^ type.hashCode;

  static List<Device> listFromJson(List<dynamic> json) {
    return json == null
        ? <Device>[]
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
}
