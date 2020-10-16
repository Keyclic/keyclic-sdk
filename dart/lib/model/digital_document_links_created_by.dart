part of keyclic_sdk_api.api;

class DigitalDocumentLinksCreatedBy {
  DigitalDocumentLinksCreatedBy({
    this.href,
    this.iriTemplate,
  });

  factory DigitalDocumentLinksCreatedBy.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DigitalDocumentLinksCreatedBy(
      href: json['href'],
      iriTemplate: DigitalDocumentLinksCreatedByIriTemplate.fromJson(
          json['iriTemplate']),
    );
  }

  /* The URI of the createdBy associated to the given digitaldocument. */
  String href;

  DigitalDocumentLinksCreatedByIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DigitalDocumentLinksCreatedBy &&
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

  static List<DigitalDocumentLinksCreatedBy> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                DigitalDocumentLinksCreatedBy.fromJson(value))
            ?.toList() ??
        <DigitalDocumentLinksCreatedBy>[];
  }

  static Map<String, DigitalDocumentLinksCreatedBy> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, DigitalDocumentLinksCreatedBy>(
            (String key, dynamic value) {
          return MapEntry(key, DigitalDocumentLinksCreatedBy.fromJson(value));
        }) ??
        <String, DigitalDocumentLinksCreatedBy>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'DigitalDocumentLinksCreatedBy[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
