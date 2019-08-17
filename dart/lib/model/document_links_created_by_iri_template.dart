part of keyclic_sdk_api.api;

class DocumentLinksCreatedByIriTemplate {
  DocumentLinksCreatedByIriTemplate({
    this.mapping,
  });

  DocumentLinksCreatedByIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping =
        DelegationLinksCreatedByIriTemplateMapping.fromJson(json['mapping']);
  }

  DelegationLinksCreatedByIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentLinksCreatedByIriTemplate &&
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
    return 'DocumentLinksCreatedByIriTemplate[mapping=$mapping, ]';
  }

  static List<DocumentLinksCreatedByIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<DocumentLinksCreatedByIriTemplate>()
        : json
            .map((value) => DocumentLinksCreatedByIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, DocumentLinksCreatedByIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DocumentLinksCreatedByIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DocumentLinksCreatedByIriTemplate.fromJson(value));
    }
    return map;
  }
}
