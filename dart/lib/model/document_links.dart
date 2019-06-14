part of keyclic_sdk_api.api;

class DocumentLinks {
  DocumentLinks({
    this.self,
    this.file,
    this.createdBy,
  });

  DocumentLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    self = DocumentLinksSelf.fromJson(json['self']);
    file = DocumentLinksFile.fromJson(json['file']);
    createdBy = DocumentLinksCreatedBy.fromJson(json['createdBy']);
  }

  DocumentLinksSelf self;

  DocumentLinksFile file;

  DocumentLinksCreatedBy createdBy;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentLinks && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'self': self,
      'file': file,
      'createdBy': createdBy,
    };
  }

  @override
  String toString() {
    return 'DocumentLinks[self=$self, file=$file, createdBy=$createdBy, ]';
  }

  static List<DocumentLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? List<DocumentLinks>()
        : json.map((value) => DocumentLinks.fromJson(value)).toList();
  }

  static Map<String, DocumentLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DocumentLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DocumentLinks.fromJson(value));
    }
    return map;
  }
}
