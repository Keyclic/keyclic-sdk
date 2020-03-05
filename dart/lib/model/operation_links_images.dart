part of keyclic_sdk_api.api;

class OperationLinksImages {
  OperationLinksImages({
    this.href,
    this.iriTemplate,
  });

  factory OperationLinksImages.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksImages(
      href: json['href'],
      iriTemplate:
          OperationLinksImagesIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the images associated to the given operation. */
  String href;

  OperationLinksImagesIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksImages &&
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

  static List<OperationLinksImages> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => OperationLinksImages.fromJson(value))
            ?.toList() ??
        <OperationLinksImages>[];
  }

  static Map<String, OperationLinksImages> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, OperationLinksImages.fromJson(value));
        }) ??
        <String, OperationLinksImages>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'OperationLinksImages[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
