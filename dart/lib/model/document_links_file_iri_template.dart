part of keyclic_sdk_api.api;

class DocumentLinksFileIriTemplate {
  DocumentLinksFileIriTemplate({
    this.mapping,
  });

  factory DocumentLinksFileIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DocumentLinksFileIriTemplate(
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

    return other is DocumentLinksFileIriTemplate &&
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

  static List<DocumentLinksFileIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map(
                (dynamic value) => DocumentLinksFileIriTemplate.fromJson(value))
            ?.toList() ??
        <DocumentLinksFileIriTemplate>[];
  }

  static Map<String, DocumentLinksFileIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, DocumentLinksFileIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, DocumentLinksFileIriTemplate.fromJson(value));
        }) ??
        <String, DocumentLinksFileIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping?.toJson(),
    };
  }

  @override
  String toString() {
    return 'DocumentLinksFileIriTemplate[mapping=$mapping, ]';
  }
}
