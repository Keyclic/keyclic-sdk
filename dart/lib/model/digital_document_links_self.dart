part of keyclic_sdk_api.api;

class DigitalDocumentLinksSelf {
  DigitalDocumentLinksSelf({
    this.href,
    this.iriTemplate,
  });

  factory DigitalDocumentLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DigitalDocumentLinksSelf(
      href: json['href'],
      iriTemplate:
          DigitalDocumentLinksSelfIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the self associated to the given digitaldocument. */
  String href;

  DigitalDocumentLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DigitalDocumentLinksSelf &&
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

  static List<DigitalDocumentLinksSelf> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => DigitalDocumentLinksSelf.fromJson(value))
            ?.toList() ??
        <DigitalDocumentLinksSelf>[];
  }

  static Map<String, DigitalDocumentLinksSelf> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, DigitalDocumentLinksSelf>(
            (String key, dynamic value) {
          return MapEntry(key, DigitalDocumentLinksSelf.fromJson(value));
        }) ??
        <String, DigitalDocumentLinksSelf>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'DigitalDocumentLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
