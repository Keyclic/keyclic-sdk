part of keyclic_sdk_api.api;

class DocumentLinksFileIriTemplate {
  DocumentLinksFileIriTemplate({
    this.mapping,
  });

  DocumentLinksFileIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = DocumentLinksFileIriTemplateMapping.fromJson(json['mapping']);
  }

  DocumentLinksFileIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentLinksFileIriTemplate &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<DocumentLinksFileIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? List<DocumentLinksFileIriTemplate>()
        : json
            .map((value) => DocumentLinksFileIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, DocumentLinksFileIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DocumentLinksFileIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DocumentLinksFileIriTemplate.fromJson(value));
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
    return 'DocumentLinksFileIriTemplate[mapping=$mapping, ]';
  }
}
