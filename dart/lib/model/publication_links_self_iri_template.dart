part of keyclic_sdk_api.api;

class PublicationLinksSelfIriTemplate {
  PublicationLinksSelfIriTemplate({
    this.mapping,
  });

  factory PublicationLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PublicationLinksSelfIriTemplate(
      mapping: PublicationLinksSelfIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  PublicationLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationLinksSelfIriTemplate &&
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

  static List<PublicationLinksSelfIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                PublicationLinksSelfIriTemplate.fromJson(value))
            ?.toList() ??
        <PublicationLinksSelfIriTemplate>[];
  }

  static Map<String, PublicationLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, PublicationLinksSelfIriTemplate.fromJson(value));
        }) ??
        <String, PublicationLinksSelfIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'PublicationLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
