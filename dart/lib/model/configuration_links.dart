part of keyclic_sdk_api.api;

class ConfigurationLinks {
  ConfigurationLinks({
    this.self,
  });

  factory ConfigurationLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ConfigurationLinks(
      self: ConfigurationLinksSelf.fromJson(json['self']),
    );
  }

  ConfigurationLinksSelf self;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ConfigurationLinks &&
        runtimeType == other.runtimeType &&
        self == other.self;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= self?.hashCode ?? 0;

    return hashCode;
  }

  static List<ConfigurationLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? <ConfigurationLinks>[]
        : json
            .map((dynamic value) => ConfigurationLinks.fromJson(value))
            .toList();
  }

  static Map<String, ConfigurationLinks> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ConfigurationLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ConfigurationLinks.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (self != null) 'self': self,
    };
  }

  @override
  String toString() {
    return 'ConfigurationLinks[self=$self, ]';
  }
}
