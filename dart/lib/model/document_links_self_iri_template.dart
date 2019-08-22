part of keyclic_sdk_api.api;

class DocumentLinksSelfIriTemplate {
  DocumentLinksSelfIriTemplate({
    this.mapping,
  });

  DocumentLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = DocumentLinksFileIriTemplateMapping.fromJson(json['mapping']);
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
  int get hashCode => 0 ^ mapping.hashCode;

  static List<DocumentLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? <DocumentLinksSelfIriTemplate>[]
        : json
            .map((value) => DocumentLinksSelfIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, DocumentLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DocumentLinksSelfIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DocumentLinksSelfIriTemplate.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'DocumentLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
