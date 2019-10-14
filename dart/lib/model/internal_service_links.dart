part of keyclic_sdk_api.api;

class InternalServiceLinks {
  InternalServiceLinks({
    this.organization,
    this.self,
  });

  InternalServiceLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    organization =
        InternalServiceLinksOrganization.fromJson(json['organization']);
    self = InternalServiceLinksSelf.fromJson(json['self']);
  }

  InternalServiceLinksOrganization organization;

  InternalServiceLinksSelf self;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServiceLinks &&
        runtimeType == other.runtimeType &&
        organization == other.organization &&
        self == other.self;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= organization?.hashCode ?? 0;
    hashCode ^= self?.hashCode ?? 0;

    return hashCode;
  }

  static List<InternalServiceLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? <InternalServiceLinks>[]
        : json
            .map((dynamic value) => InternalServiceLinks.fromJson(value))
            .toList();
  }

  static Map<String, InternalServiceLinks> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, InternalServiceLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = InternalServiceLinks.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (organization != null) 'organization': organization,
      if (self != null) 'self': self,
    };
  }

  @override
  String toString() {
    return 'InternalServiceLinks[organization=$organization, self=$self, ]';
  }
}
