part of keyclic_sdk_api.api;

class DocumentLinksFile {
  DocumentLinksFile({
    this.href,
    this.iriTemplate,
  });

  factory DocumentLinksFile.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DocumentLinksFile(
      href: json['href'],
      iriTemplate: DocumentLinksFileIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the file associated to the given document. */
  String href;

  DocumentLinksFileIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentLinksFile &&
        runtimeType == other.runtimeType &&
        href == other.href &&
        iriTemplate == other.iriTemplate;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= href?.hashCode ?? 0;
    hashCode ^= iriTemplate?.hashCode ?? 0;

    return hashCode;
  }

  static List<DocumentLinksFile> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => DocumentLinksFile.fromJson(value))
            ?.toList() ??
        <DocumentLinksFile>[];
  }

  static Map<String, DocumentLinksFile> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, DocumentLinksFile>((String key, dynamic value) {
          return MapEntry(key, DocumentLinksFile.fromJson(value));
        }) ??
        <String, DocumentLinksFile>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'DocumentLinksFile[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
