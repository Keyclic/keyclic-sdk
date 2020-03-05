part of keyclic_sdk_api.api;

class OperationLinksImage {
  OperationLinksImage({
    this.href,
    this.iriTemplate,
  });

  factory OperationLinksImage.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksImage(
      href: json['href'],
      iriTemplate: OperationLinksImageIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the image associated to the given operation. */
  String href;

  OperationLinksImageIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksImage &&
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

  static List<OperationLinksImage> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => OperationLinksImage.fromJson(value))
            ?.toList() ??
        <OperationLinksImage>[];
  }

  static Map<String, OperationLinksImage> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, OperationLinksImage.fromJson(value));
        }) ??
        <String, OperationLinksImage>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'OperationLinksImage[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
