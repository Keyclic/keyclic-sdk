// @dart=2.10
part of keyclic_sdk_api.api;

class InternalServiceLinksSelfIriTemplate {
  InternalServiceLinksSelfIriTemplate({
    this.mapping,
  });

  factory InternalServiceLinksSelfIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InternalServiceLinksSelfIriTemplate(
      mapping:
          InternalServiceLinksSelfIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  InternalServiceLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServiceLinksSelfIriTemplate &&
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

  static List<InternalServiceLinksSelfIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                InternalServiceLinksSelfIriTemplate.fromJson(value))
            ?.toList() ??
        <InternalServiceLinksSelfIriTemplate>[];
  }

  static Map<String, InternalServiceLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, InternalServiceLinksSelfIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, InternalServiceLinksSelfIriTemplate.fromJson(value));
        }) ??
        <String, InternalServiceLinksSelfIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'InternalServiceLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
