part of keyclic_sdk_api.api;

class OperationLinksImages {
  OperationLinksImages({
    this.href,
    this.iriTemplate,
  });

  OperationLinksImages.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = OperationLinksImagesIriTemplate.fromJson(json['iriTemplate']);
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
  int get hashCode => 0 ^ href.hashCode ^ iriTemplate.hashCode;

  static List<OperationLinksImages> listFromJson(List<dynamic> json) {
    return json == null
        ? <OperationLinksImages>[]
        : json.map((value) => OperationLinksImages.fromJson(value)).toList();
  }

  static Map<String, OperationLinksImages> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OperationLinksImages>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OperationLinksImages.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'OperationLinksImages[href=$href, iriTemplate=$iriTemplate, ]';
  }
}