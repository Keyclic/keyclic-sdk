// @dart=2.10
part of keyclic_sdk_api.api;

class ApplicationLinksSelfIriTemplate {
  ApplicationLinksSelfIriTemplate({
    this.mapping,
  });

  factory ApplicationLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ApplicationLinksSelfIriTemplate(
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

    return other is ApplicationLinksSelfIriTemplate &&
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

  static List<ApplicationLinksSelfIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                ApplicationLinksSelfIriTemplate.fromJson(value))
            ?.toList() ??
        <ApplicationLinksSelfIriTemplate>[];
  }

  static Map<String, ApplicationLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ApplicationLinksSelfIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, ApplicationLinksSelfIriTemplate.fromJson(value));
        }) ??
        <String, ApplicationLinksSelfIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'ApplicationLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
