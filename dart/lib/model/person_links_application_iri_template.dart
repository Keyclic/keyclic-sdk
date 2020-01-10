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
    return json == null
        ? <PersonLinksApplicationIriTemplate>[]
        : json
            .map((dynamic value) =>
                PersonLinksApplicationIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, PersonLinksApplicationIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PersonLinksApplicationIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PersonLinksApplicationIriTemplate.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'PersonLinksApplicationIriTemplate[mapping=$mapping, ]';
  }
}
