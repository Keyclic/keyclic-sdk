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
    return json == null
        ? <PublicationLinksSelf>[]
        : json
            .map((dynamic value) => PublicationLinksSelf.fromJson(value))
            .toList();
  }

  static Map<String, PublicationLinksSelf> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PublicationLinksSelf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PublicationLinksSelf.fromJson(value));
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
    return 'PublicationLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
