part of keyclic_sdk_api.api;

class DocumentLinks {
  DocumentLinks({
    this.createdBy,
    this.file,
    this.self,
  });

  DocumentLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    createdBy = DocumentLinksCreatedBy.fromJson(json['createdBy']);
    file = DocumentLinksFile.fromJson(json['file']);
    self = DocumentLinksSelf.fromJson(json['self']);
  }

  DocumentLinksCreatedBy createdBy;

  DocumentLinksFile file;

  DocumentLinksSelf self;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentLinks &&
        runtimeType == other.runtimeType &&
        createdBy == other.createdBy &&
        file == other.file &&
        self == other.self;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ createdBy.hashCode ^ file.hashCode ^ self.hashCode;

  static List<DocumentLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? <DocumentLinks>[]
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

  Map<String, dynamic> toJson() {
    return {
      'createdBy': createdBy,
      'file': file,
      'self': self,
    };
  }

  @override
  String toString() {
    return 'DocumentLinks[createdBy=$createdBy, file=$file, self=$self, ]';
  }
}
