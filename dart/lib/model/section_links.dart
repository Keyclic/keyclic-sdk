part of keyclic_sdk_api.api;

class SectionLinks {
  SectionLinks({
    this.self,
  });

  factory SectionLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return SectionLinks(
      self: SectionLinksSelf.fromJson(json['self']),
    );
  }

  SectionLinksSelf self;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SectionLinks &&
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

  static List<SectionLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? <SectionLinks>[]
        : json.map((dynamic value) => SectionLinks.fromJson(value)).toList();
  }

  static Map<String, SectionLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SectionLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = SectionLinks.fromJson(value));
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
    return 'SectionLinks[self=$self, ]';
  }
}
