part of keyclic_sdk_api.api;

class PublicationLinksSelf {
  PublicationLinksSelf({
    this.href,
    this.iriTemplate,
  });

  factory PublicationLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PublicationLinksSelf(
      href: json['href'],
      iriTemplate:
          PublicationLinksSelfIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the self associated to the given publication. */
  String href;

  PublicationLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationLinksSelf &&
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

  static List<PublicationLinksSelf> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PublicationLinksSelf.fromJson(value))
            ?.toList() ??
        <PublicationLinksSelf>[];
  }

  static Map<String, PublicationLinksSelf> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, PublicationLinksSelf.fromJson(value));
        }) ??
        <String, PublicationLinksSelf>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'PublicationLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
