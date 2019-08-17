part of keyclic_sdk_api.api;

class DocumentLinksFileIriTemplateMapping {
  DocumentLinksFileIriTemplateMapping({
    this.document,
  });

  DocumentLinksFileIriTemplateMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    document = json['document'];
  }

  String document;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentLinksFileIriTemplateMapping &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<DocumentLinksFileIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<DocumentLinksFileIriTemplateMapping>()
        : json
            .map((value) => DocumentLinksFileIriTemplateMapping.fromJson(value))
            .toList();
  }

  static Map<String, DocumentLinksFileIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DocumentLinksFileIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DocumentLinksFileIriTemplateMapping.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'document': document,
    };
  }

  @override
  String toString() {
    return 'DocumentLinksFileIriTemplateMapping[document=$document, ]';
  }
}
