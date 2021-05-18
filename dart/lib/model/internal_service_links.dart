part of keyclic_sdk_api.api;

class InternalServiceLinks {
  InternalServiceLinks({
    this.organization,
    this.self,
  });

  factory InternalServiceLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InternalServiceLinks(
      organization:
          InternalServiceLinksOrganization.fromJson(json['organization']),
      self: InternalServiceLinksSelf.fromJson(json['self']),
    );
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
    return json
            ?.map((dynamic value) => InternalServiceLinks.fromJson(value))
            ?.toList() ??
        <InternalServiceLinks>[];
  }

  static Map<String, InternalServiceLinks> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, InternalServiceLinks>((String key, dynamic value) {
          return MapEntry(key, InternalServiceLinks.fromJson(value));
        }) ??
        <String, InternalServiceLinks>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'organization': organization?.toJson(),
      'self': self?.toJson(),
    };
  }

  @override
  String toString() {
    return 'InternalServiceLinks[organization=$organization, self=$self, ]';
  }
}
