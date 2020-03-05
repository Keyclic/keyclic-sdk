part of keyclic_sdk_api.api;

class PersonLinksApplicationIriTemplate {
  PersonLinksApplicationIriTemplate({
    this.mapping,
  });

  factory PersonLinksApplicationIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PersonLinksApplicationIriTemplate(
      mapping: ApplicationLinksSelfIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  ApplicationLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PersonLinksApplicationIriTemplate &&
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

  static List<PersonLinksApplicationIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                PersonLinksApplicationIriTemplate.fromJson(value))
            ?.toList() ??
        <PersonLinksApplicationIriTemplate>[];
  }

  static Map<String, PersonLinksApplicationIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(
              key, PersonLinksApplicationIriTemplate.fromJson(value));
        }) ??
        <String, PersonLinksApplicationIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'PersonLinksApplicationIriTemplate[mapping=$mapping, ]';
  }
}
