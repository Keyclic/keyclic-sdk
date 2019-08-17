part of keyclic_sdk_api.api;

class DocumentLinksFile {
  DocumentLinksFile({
    this.href,
    this.iriTemplate,
  });

  DocumentLinksFile.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = DocumentLinksFileIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the file associated to the given document. */
  String href;

  DocumentLinksFileIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentLinksFile && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<DocumentLinksFile> listFromJson(List<dynamic> json) {
    return json == null
        ? List<DocumentLinksFile>()
        : json.map((value) => DocumentLinksFile.fromJson(value)).toList();
  }

  static Map<String, DocumentLinksFile> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DocumentLinksFile>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DocumentLinksFile.fromJson(value));
    }
    return map;
  }

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
}
