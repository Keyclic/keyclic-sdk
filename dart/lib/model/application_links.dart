part of keyclic_sdk_api.api;

class ApplicationLinks {
  ApplicationLinks({
    this.self,
  });

  ApplicationLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    self = ApplicationLinksSelf.fromJson(json['self']);
  }

  ApplicationLinksSelf self;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ApplicationLinks &&
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

  static List<ApplicationLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? <ApplicationLinks>[]
        : json
            .map((dynamic value) => ApplicationLinks.fromJson(value))
            .toList();
  }

  static Map<String, ApplicationLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ApplicationLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ApplicationLinks.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'self': self,
    };
  }

  @override
  String toString() {
    return 'ApplicationLinks[self=$self, ]';
  }
}
