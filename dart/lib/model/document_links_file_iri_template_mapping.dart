// @dart=2.10
part of keyclic_sdk_api.api;

class DocumentLinksFileIriTemplateMapping {
  DocumentLinksFileIriTemplateMapping({
    this.document,
  });

  factory DocumentLinksFileIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DocumentLinksFileIriTemplateMapping(
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

    return other is DocumentLinksFileIriTemplateMapping &&
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

  static List<DocumentLinksFileIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                DocumentLinksFileIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <DocumentLinksFileIriTemplateMapping>[];
  }

  static Map<String, DocumentLinksFileIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, DocumentLinksFileIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(
              key, DocumentLinksFileIriTemplateMapping.fromJson(value));
        }) ??
        <String, DocumentLinksFileIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (document != null) 'document': document,
    };
  }

  @override
  String toString() {
    return 'DocumentLinksFileIriTemplateMapping[document=$document, ]';
  }
}
