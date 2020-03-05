part of keyclic_sdk_api.api;

class DocumentLinksSelf {
  DocumentLinksSelf({
    this.href,
    this.iriTemplate,
  });

  factory DocumentLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DocumentLinksSelf(
      href: json['href'],
      iriTemplate: DocumentLinksSelfIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the self associated to the given document. */
  String href;

  DocumentLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentLinksSelf &&
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

  static List<DocumentLinksSelf> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => DocumentLinksSelf.fromJson(value))
            ?.toList() ??
        <DocumentLinksSelf>[];
  }

  static Map<String, DocumentLinksSelf> mapFromJson(Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, DocumentLinksSelf.fromJson(value));
        }) ??
        <String, DocumentLinksSelf>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'DocumentLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
