part of keyclic_sdk_api.api;

class DelegationLinksSelfIriTemplateMapping {
  DelegationLinksSelfIriTemplateMapping({
    this.delegation,
  });

  factory DelegationLinksSelfIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DelegationLinksSelfIriTemplateMapping(
      delegation: json['delegation'],
    );
  }

  String delegation;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DelegationLinksSelfIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        delegation == other.delegation;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= delegation?.hashCode ?? 0;

    return hashCode;
  }

  static List<DelegationLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                DelegationLinksSelfIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <DelegationLinksSelfIriTemplateMapping>[];
  }

  static Map<String, DelegationLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(
              key, DelegationLinksSelfIriTemplateMapping.fromJson(value));
        }) ??
        <String, DelegationLinksSelfIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (delegation != null) 'delegation': delegation,
    };
  }

  @override
  String toString() {
    return 'DelegationLinksSelfIriTemplateMapping[delegation=$delegation, ]';
  }
}
