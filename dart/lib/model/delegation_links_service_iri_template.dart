part of keyclic_sdk_api.api;

class DelegationLinksServiceIriTemplate {
  DelegationLinksServiceIriTemplate({
    this.mapping,
  });

  factory DelegationLinksServiceIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DelegationLinksServiceIriTemplate(
      mapping:
          DelegationLinksServiceIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  DelegationLinksServiceIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DelegationLinksServiceIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= mapping?.hashCode ?? 0;

    return hashCode;
  }

  static List<DelegationLinksServiceIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                DelegationLinksServiceIriTemplate.fromJson(value))
            ?.toList() ??
        <DelegationLinksServiceIriTemplate>[];
  }

  static Map<String, DelegationLinksServiceIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(
              key, DelegationLinksServiceIriTemplate.fromJson(value));
        }) ??
        <String, DelegationLinksServiceIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'DelegationLinksServiceIriTemplate[mapping=$mapping, ]';
  }
}
