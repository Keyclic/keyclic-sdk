part of keyclic_sdk_api.api;

class DocumentLinksSelfIriTemplateMapping {
  DocumentLinksSelfIriTemplateMapping();

  DocumentLinksSelfIriTemplateMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    document = json['document'];
  }

  String document;

  Map<String, dynamic> toJson() {
    return {
      'document': document,
    };
  }

  @override
  String toString() {
    return 'DocumentLinksSelfIriTemplateMapping[document=$document, ]';
  }

  static List<DocumentLinksSelfIriTemplateMapping> listFromJson(List<dynamic> json) {
    return json == null ? List<DocumentLinksSelfIriTemplateMapping>() : json.map((value) => DocumentLinksSelfIriTemplateMapping.fromJson(value)).toList();
  }

  static Map<String, DocumentLinksSelfIriTemplateMapping> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DocumentLinksSelfIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DocumentLinksSelfIriTemplateMapping.fromJson(value));
    }
    return map;
  }
}
