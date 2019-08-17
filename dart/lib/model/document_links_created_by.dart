part of keyclic_sdk_api.api;

class DocumentLinksCreatedBy {
  DocumentLinksCreatedBy({
    this.href,
    this.iriTemplate,
  });

  DocumentLinksCreatedBy.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        DocumentLinksCreatedByIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the createdBy associated to the given document. */
  String href;

  DocumentLinksCreatedByIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentLinksCreatedBy && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'DocumentLinksCreatedBy[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<DocumentLinksCreatedBy> listFromJson(List<dynamic> json) {
    return json == null
        ? List<DocumentLinksCreatedBy>()
        : json.map((value) => DocumentLinksCreatedBy.fromJson(value)).toList();
  }

  static Map<String, DocumentLinksCreatedBy> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DocumentLinksCreatedBy>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DocumentLinksCreatedBy.fromJson(value));
    }
    return map;
  }
}
