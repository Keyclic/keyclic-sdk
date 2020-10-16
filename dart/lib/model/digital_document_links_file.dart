part of keyclic_sdk_api.api;

class DigitalDocumentLinksFile {
  DigitalDocumentLinksFile({
    this.href,
    this.iriTemplate,
  });

  factory DigitalDocumentLinksFile.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DigitalDocumentLinksFile(
      href: json['href'],
      iriTemplate:
          DigitalDocumentLinksFileIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the file associated to the given digitaldocument. */
  String href;

  DigitalDocumentLinksFileIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DigitalDocumentLinksFile &&
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

  static List<DigitalDocumentLinksFile> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => DigitalDocumentLinksFile.fromJson(value))
            ?.toList() ??
        <DigitalDocumentLinksFile>[];
  }

  static Map<String, DigitalDocumentLinksFile> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, DigitalDocumentLinksFile>(
            (String key, dynamic value) {
          return MapEntry(key, DigitalDocumentLinksFile.fromJson(value));
        }) ??
        <String, DigitalDocumentLinksFile>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'DigitalDocumentLinksFile[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
