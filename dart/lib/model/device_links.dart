part of keyclic_sdk_api.api;

class DeviceLinks {
  DeviceLinks({
    this.person,
    this.self,
  });

  factory DeviceLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DeviceLinks(
      person: DeviceLinksPerson.fromJson(json['person']),
      self: DeviceLinksSelf.fromJson(json['self']),
    );
  }

  DeviceLinksPerson person;

  DeviceLinksSelf self;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DeviceLinks &&
        runtimeType == other.runtimeType &&
        person == other.person &&
        self == other.self;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= person?.hashCode ?? 0;
    hashCode ^= self?.hashCode ?? 0;

    return hashCode;
  }

  static List<DeviceLinks> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => DeviceLinks.fromJson(value))
            ?.toList() ??
        <DeviceLinks>[];
  }

  static Map<String, DeviceLinks> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, DeviceLinks>((String key, dynamic value) {
          return MapEntry(key, DeviceLinks.fromJson(value));
        }) ??
        <String, DeviceLinks>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'person': person?.toJson(),
      'self': self?.toJson(),
    };
  }

  @override
  String toString() {
    return 'DeviceLinks[person=$person, self=$self, ]';
  }
}
