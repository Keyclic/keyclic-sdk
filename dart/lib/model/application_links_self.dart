part of keyclic_sdk_api.api;

class ApplicationLinksSelf {
  ApplicationLinksSelf({
    this.href,
    this.iriTemplate,
  });

  factory ApplicationLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ApplicationLinksSelf(
      href: json['href'],
      iriTemplate:
          ApplicationLinksSelfIriTemplate.fromJson(json['iriTemplate']),
    );
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
    return json
            ?.map((dynamic value) => ApplicationLinksSelf.fromJson(value))
            ?.toList() ??
        <ApplicationLinksSelf>[];
  }

  static Map<String, ApplicationLinksSelf> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ApplicationLinksSelf>((String key, dynamic value) {
          return MapEntry(key, ApplicationLinksSelf.fromJson(value));
        }) ??
        <String, ApplicationLinksSelf>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate?.toJson(),
    };
  }

  @override
  String toString() {
    return 'ApplicationLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
