part of keyclic_sdk_api.api;

class DigitalDocumentLinksSelfIriTemplate {
  DigitalDocumentLinksSelfIriTemplate({
    this.mapping,
  });

  factory DigitalDocumentLinksSelfIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DigitalDocumentLinksSelfIriTemplate(
      mapping:
          DigitalDocumentLinksSelfIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  DigitalDocumentLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DigitalDocumentLinksSelfIriTemplate &&
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

  static List<DigitalDocumentLinksSelfIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                DigitalDocumentLinksSelfIriTemplate.fromJson(value))
            ?.toList() ??
        <DigitalDocumentLinksSelfIriTemplate>[];
  }

  static Map<String, DigitalDocumentLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, DigitalDocumentLinksSelfIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, DigitalDocumentLinksSelfIriTemplate.fromJson(value));
        }) ??
        <String, DigitalDocumentLinksSelfIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'DigitalDocumentLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
