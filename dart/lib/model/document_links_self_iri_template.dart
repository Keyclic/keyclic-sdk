part of keyclic_sdk_api.api;

class DocumentLinksSelfIriTemplate {
  DocumentLinksSelfIriTemplate({
    this.mapping,
  });

  factory DocumentLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DocumentLinksSelfIriTemplate(
      mapping: DocumentLinksFileIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  DocumentLinksFileIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentLinksSelfIriTemplate &&
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

  static List<DocumentLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map(
                (dynamic value) => DocumentLinksSelfIriTemplate.fromJson(value))
            ?.toList() ??
        <DocumentLinksSelfIriTemplate>[];
  }

  static Map<String, DocumentLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, DocumentLinksSelfIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, DocumentLinksSelfIriTemplate.fromJson(value));
        }) ??
        <String, DocumentLinksSelfIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping?.toJson(),
    };
  }

  @override
  String toString() {
    return 'DocumentLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
