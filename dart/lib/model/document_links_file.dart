part of keyclic_sdk_api.api;

class DocumentLinksFile {
  DocumentLinksFile();

  DocumentLinksFile.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = DocumentLinksSelfIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the file associated to the given document. */
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
    return 'DocumentLinksFile[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<DocumentLinksFile> listFromJson(List<dynamic> json) {
    return json == null ? List<DocumentLinksFile>() : json.map((value) => DocumentLinksFile.fromJson(value)).toList();
  }

  static Map<String, DocumentLinksFile> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DocumentLinksFile>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DocumentLinksFile.fromJson(value));
    }
    return map;
  }
}
