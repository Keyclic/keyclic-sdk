part of keyclic_sdk_api.api;

class DocumentLinksSelfIriTemplate {
  DocumentLinksSelfIriTemplate({
    this.mapping,
  });

  DocumentLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = DocumentLinksSelfIriTemplateMapping.fromJson(json['mapping']);
  }

  DocumentLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentLinksSelfIriTemplate &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'DocumentLinksSelfIriTemplate[mapping=$mapping, ]';
  }

  static List<DocumentLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? List<DocumentLinksSelfIriTemplate>()
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
}
