part of keyclic_sdk_api.api;

class BusinessActivityLinksSelf {
  BusinessActivityLinksSelf({
    this.href,
    this.iriTemplate,
  });

  BusinessActivityLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        BusinessActivityLinksSelfIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the self associated to the given businessactivity. */
  String href;

  BusinessActivityLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessActivityLinksSelf &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'BusinessActivityLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<BusinessActivityLinksSelf> listFromJson(List<dynamic> json) {
    return json == null
        ? List<BusinessActivityLinksSelf>()
        : json
            .map((value) => BusinessActivityLinksSelf.fromJson(value))
            .toList();
  }

  static Map<String, BusinessActivityLinksSelf> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, BusinessActivityLinksSelf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = BusinessActivityLinksSelf.fromJson(value));
    }
    return map;
  }
}
