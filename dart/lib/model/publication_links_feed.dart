part of keyclic_sdk_api.api;

class PublicationLinksFeed {
  PublicationLinksFeed({
    this.href,
    this.iriTemplate,
  });

  factory PublicationLinksFeed.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PublicationLinksFeed(
      href: json['href'],
      iriTemplate:
          PublicationLinksFeedIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the feed associated to the given publication. */
  String href;

  PublicationLinksFeedIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationLinksFeed &&
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

  static List<PublicationLinksFeed> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PublicationLinksFeed.fromJson(value))
            ?.toList() ??
        <PublicationLinksFeed>[];
  }

  static Map<String, PublicationLinksFeed> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, PublicationLinksFeed>((String key, dynamic value) {
          return MapEntry(key, PublicationLinksFeed.fromJson(value));
        }) ??
        <String, PublicationLinksFeed>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate?.toJson(),
    };
  }

  @override
  String toString() {
    return 'PublicationLinksFeed[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
