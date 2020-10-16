part of keyclic_sdk_api.api;

class DigitalDocumentLinksSelfIriTemplateMapping {
  DigitalDocumentLinksSelfIriTemplateMapping({
    this.digitalDocument,
  });

  factory DigitalDocumentLinksSelfIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DigitalDocumentLinksSelfIriTemplateMapping(
      digitalDocument: json['digitalDocument'],
    );
  }

  String digitalDocument;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DigitalDocumentLinksSelfIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        digitalDocument == other.digitalDocument;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= digitalDocument?.hashCode ?? 0;

    return hashCode;
  }

  static List<DigitalDocumentLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                DigitalDocumentLinksSelfIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <DigitalDocumentLinksSelfIriTemplateMapping>[];
  }

  static Map<String, DigitalDocumentLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, DigitalDocumentLinksSelfIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(
              key, DigitalDocumentLinksSelfIriTemplateMapping.fromJson(value));
        }) ??
        <String, DigitalDocumentLinksSelfIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (digitalDocument != null) 'digitalDocument': digitalDocument,
    };
  }

  @override
  String toString() {
    return 'DigitalDocumentLinksSelfIriTemplateMapping[digitalDocument=$digitalDocument, ]';
  }
}
