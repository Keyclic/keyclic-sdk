part of keyclic_sdk_api.api;

class DeviceData {
  DeviceData({
    this.token,
    this.platform,
  });

  DeviceData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    token = json['token'];
    platform = json['platform'];
  }

  String token;

  String platform;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is DeviceData &&
        runtimeType == other.runtimeType &&
        token == other.token;
  }

  @override
  int get hashCode => 0 ^ token.hashCode;

  static List<DeviceData> listFromJson(List<dynamic> json) {
    return json == null
        ? List<DeviceData>()
        : json.map((value) => DeviceData.fromJson(value)).toList();
  }

  static Map<String, DeviceData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeviceData>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = DeviceData.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'token': token,
      'platform': platform,
    };
  }

  @override
  String toString() {
    return 'DeviceData[token=$token, platform=$platform, ]';
  }
}
