part of keyclic_sdk_api.api;

class DigitalDocumentLinksFileIriTemplateMapping {
  DigitalDocumentLinksFileIriTemplateMapping({
    this.document,
  });

  factory DigitalDocumentLinksFileIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DigitalDocumentLinksFileIriTemplateMapping(
      document: json['document'],
    );
  }

  String document;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DigitalDocumentLinksFileIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        document == other.document;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= document?.hashCode ?? 0;

    return hashCode;
  }

  static List<DigitalDocumentLinksFileIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                DigitalDocumentLinksFileIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <DigitalDocumentLinksFileIriTemplateMapping>[];
  }

  static Map<String, DigitalDocumentLinksFileIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, DigitalDocumentLinksFileIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(
              key, DigitalDocumentLinksFileIriTemplateMapping.fromJson(value));
        }) ??
        <String, DigitalDocumentLinksFileIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (document != null) 'document': document,
    };
  }

  @override
  String toString() {
    return 'DigitalDocumentLinksFileIriTemplateMapping[document=$document, ]';
  }
}
