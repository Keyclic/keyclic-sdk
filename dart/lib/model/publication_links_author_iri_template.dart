part of keyclic_sdk_api.api;

class PublicationLinksAuthorIriTemplate {
  PublicationLinksAuthorIriTemplate({
    this.mapping,
  });

  factory PublicationLinksAuthorIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PublicationLinksAuthorIriTemplate(
      mapping:
          AssignmentLinksCreatedByIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  AssignmentLinksCreatedByIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationLinksAuthorIriTemplate &&
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

  static List<PublicationLinksAuthorIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                PublicationLinksAuthorIriTemplate.fromJson(value))
            ?.toList() ??
        <PublicationLinksAuthorIriTemplate>[];
  }

  static Map<String, PublicationLinksAuthorIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, PublicationLinksAuthorIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, PublicationLinksAuthorIriTemplate.fromJson(value));
        }) ??
        <String, PublicationLinksAuthorIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'PublicationLinksAuthorIriTemplate[mapping=$mapping, ]';
  }
}
