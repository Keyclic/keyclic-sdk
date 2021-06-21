// @dart=2.10
part of keyclic_sdk_api.api;

class RuleLinks {
  RuleLinks({
    this.self,
  });

  factory RuleLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return RuleLinks(
      self: RuleLinksSelf.fromJson(json['self']),
    );
  }

  RuleLinksSelf self;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RuleLinks &&
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

  static List<RuleLinks> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => RuleLinks.fromJson(value))?.toList() ??
        <RuleLinks>[];
  }

  static Map<String, RuleLinks> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, RuleLinks>((String key, dynamic value) {
          return MapEntry(key, RuleLinks.fromJson(value));
        }) ??
        <String, RuleLinks>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (self != null) 'self': self.toJson(),
    };
  }

  @override
  String toString() {
    return 'RuleLinks[self=$self, ]';
  }
}
