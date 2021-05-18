part of keyclic_sdk_api.api;

class DocumentLinksCreatedBy {
  DocumentLinksCreatedBy({
    this.href,
    this.iriTemplate,
  });

  factory DocumentLinksCreatedBy.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DocumentLinksCreatedBy(
      href: json['href'],
      iriTemplate:
          DocumentLinksCreatedByIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the createdBy associated to the given document. */
  String href;

  DocumentLinksCreatedByIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentLinksCreatedBy &&
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

  static List<DocumentLinksCreatedBy> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => DocumentLinksCreatedBy.fromJson(value))
            ?.toList() ??
        <DocumentLinksCreatedBy>[];
  }

  static Map<String, DocumentLinksCreatedBy> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, DocumentLinksCreatedBy>((String key, dynamic value) {
          return MapEntry(key, DocumentLinksCreatedBy.fromJson(value));
        }) ??
        <String, DocumentLinksCreatedBy>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate?.toJson(),
    };
  }

  @override
  String toString() {
    return 'DocumentLinksCreatedBy[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
