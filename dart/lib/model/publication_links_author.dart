part of keyclic_sdk_api.api;

class PublicationLinksAuthor {
  PublicationLinksAuthor({
    this.href,
    this.iriTemplate,
  });

  factory PublicationLinksAuthor.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PublicationLinksAuthor(
      href: json['href'],
      iriTemplate:
          PublicationLinksAuthorIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the author associated to the given publication. */
  String href;

  PublicationLinksAuthorIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationLinksAuthor &&
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

  static List<PublicationLinksAuthor> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PublicationLinksAuthor.fromJson(value))
            ?.toList() ??
        <PublicationLinksAuthor>[];
  }

  static Map<String, PublicationLinksAuthor> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, PublicationLinksAuthor>((String key, dynamic value) {
          return MapEntry(key, PublicationLinksAuthor.fromJson(value));
        }) ??
        <String, PublicationLinksAuthor>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'PublicationLinksAuthor[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
