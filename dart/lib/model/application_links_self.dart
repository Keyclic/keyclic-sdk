part of keyclic_sdk_api.api;

class ApplicationLinksSelf {
  ApplicationLinksSelf({
    this.href,
    this.iriTemplate,
  });

  ApplicationLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = ApplicationLinksSelfIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the self associated to the given application. */
  String href;

  ApplicationLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ApplicationLinksSelf &&
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

  static List<ApplicationLinksSelf> listFromJson(List<dynamic> json) {
    return json == null
        ? <ApplicationLinksSelf>[]
        : json
            .map((dynamic value) => ApplicationLinksSelf.fromJson(value))
            .toList();
  }

  static Map<String, ApplicationLinksSelf> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ApplicationLinksSelf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ApplicationLinksSelf.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'ApplicationLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
