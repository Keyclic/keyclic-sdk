part of keyclic_sdk_api.api;

class DocumentLinks {
  DocumentLinks({
    this.createdBy,
    this.file,
    this.self,
  });

  factory DocumentLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DocumentLinks(
      createdBy: DocumentLinksCreatedBy.fromJson(json['createdBy']),
      file: DocumentLinksFile.fromJson(json['file']),
      self: DocumentLinksSelf.fromJson(json['self']),
    );
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
  int get hashCode {
    int hashCode = 0;

    hashCode ^= createdBy?.hashCode ?? 0;
    hashCode ^= file?.hashCode ?? 0;
    hashCode ^= self?.hashCode ?? 0;

    return hashCode;
  }

  static List<DocumentLinks> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => DocumentLinks.fromJson(value))
            ?.toList() ??
        <DocumentLinks>[];
  }

  static Map<String, DocumentLinks> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, DocumentLinks>((String key, dynamic value) {
          return MapEntry(key, DocumentLinks.fromJson(value));
        }) ??
        <String, DocumentLinks>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'createdBy': createdBy?.toJson(),
      'file': file?.toJson(),
      'self': self?.toJson(),
    };
  }

  @override
  String toString() {
    return 'DocumentLinks[createdBy=$createdBy, file=$file, self=$self, ]';
  }
}
