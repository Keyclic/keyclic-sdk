part of keyclic_sdk_api.api;

class DigitalDocumentLinks {
  DigitalDocumentLinks({
    this.createdBy,
    this.file,
    this.self,
  });

  factory DigitalDocumentLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DigitalDocumentLinks(
      createdBy: DigitalDocumentLinksCreatedBy.fromJson(json['createdBy']),
      file: DigitalDocumentLinksFile.fromJson(json['file']),
      self: DigitalDocumentLinksSelf.fromJson(json['self']),
    );
  }

  DigitalDocumentLinksCreatedBy createdBy;

  DigitalDocumentLinksFile file;

  DigitalDocumentLinksSelf self;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DigitalDocumentLinks &&
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

  static List<DigitalDocumentLinks> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => DigitalDocumentLinks.fromJson(value))
            ?.toList() ??
        <DigitalDocumentLinks>[];
  }

  static Map<String, DigitalDocumentLinks> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, DigitalDocumentLinks>((String key, dynamic value) {
          return MapEntry(key, DigitalDocumentLinks.fromJson(value));
        }) ??
        <String, DigitalDocumentLinks>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (createdBy != null) 'createdBy': createdBy.toJson(),
      if (file != null) 'file': file.toJson(),
      if (self != null) 'self': self.toJson(),
    };
  }

  @override
  String toString() {
    return 'DigitalDocumentLinks[createdBy=$createdBy, file=$file, self=$self, ]';
  }
}
