part of keyclic_sdk_api.api;

class DigitalDocumentLinksFileIriTemplate {
  DigitalDocumentLinksFileIriTemplate({
    this.mapping,
  });

  factory DigitalDocumentLinksFileIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DigitalDocumentLinksFileIriTemplate(
      mapping:
          DigitalDocumentLinksFileIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  DigitalDocumentLinksFileIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DigitalDocumentLinksFileIriTemplate &&
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

  static List<DigitalDocumentLinksFileIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                DigitalDocumentLinksFileIriTemplate.fromJson(value))
            ?.toList() ??
        <DigitalDocumentLinksFileIriTemplate>[];
  }

  static Map<String, DigitalDocumentLinksFileIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, DigitalDocumentLinksFileIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, DigitalDocumentLinksFileIriTemplate.fromJson(value));
        }) ??
        <String, DigitalDocumentLinksFileIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'DigitalDocumentLinksFileIriTemplate[mapping=$mapping, ]';
  }
}
