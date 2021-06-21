// @dart=2.10
part of keyclic_sdk_api.api;

class MarkerLinks {
  MarkerLinks({
    this.plan,
    this.self,
  });

  factory MarkerLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MarkerLinks(
      plan: MarkerLinksPlan.fromJson(json['plan']),
      self: MarkerLinksSelf.fromJson(json['self']),
    );
  }

  MarkerLinksPlan plan;

  MarkerLinksSelf self;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MarkerLinks &&
        runtimeType == other.runtimeType &&
        plan == other.plan &&
        self == other.self;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= plan?.hashCode ?? 0;
    hashCode ^= self?.hashCode ?? 0;

    return hashCode;
  }

  static List<MarkerLinks> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => MarkerLinks.fromJson(value))
            ?.toList() ??
        <MarkerLinks>[];
  }

  static Map<String, MarkerLinks> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, MarkerLinks>((String key, dynamic value) {
          return MapEntry(key, MarkerLinks.fromJson(value));
        }) ??
        <String, MarkerLinks>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (plan != null) 'plan': plan.toJson(),
      if (self != null) 'self': self.toJson(),
    };
  }

  @override
  String toString() {
    return 'MarkerLinks[plan=$plan, self=$self, ]';
  }
}
