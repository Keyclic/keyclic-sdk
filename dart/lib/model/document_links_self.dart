part of keyclic_sdk_api.api;

class DocumentLinksSelf {
  DocumentLinksSelf();

  DocumentLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = DocumentLinksSelfIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the self associated to the given document. */
  String href;

  DocumentLinksSelfIriTemplate iriTemplate;

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'DocumentLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<DocumentLinksSelf> listFromJson(List<dynamic> json) {
    return json == null ? List<DocumentLinksSelf>() : json.map((value) => DocumentLinksSelf.fromJson(value)).toList();
  }

  static Map<String, DocumentLinksSelf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DocumentLinksSelf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DocumentLinksSelf.fromJson(value));
    }
    return map;
  }
}
