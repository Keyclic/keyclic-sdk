part of keyclic_sdk_api.api;

class BookmarkLinksMember {
  BookmarkLinksMember({
    this.href,
    this.iriTemplate,
  });

  factory BookmarkLinksMember.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BookmarkLinksMember(
      href: json['href'],
      iriTemplate: BookmarkLinksMemberIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the member associated to the given bookmark. */
  String href;

  BookmarkLinksMemberIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BookmarkLinksMember &&
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

  static List<BookmarkLinksMember> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => BookmarkLinksMember.fromJson(value))
            ?.toList() ??
        <BookmarkLinksMember>[];
  }

  static Map<String, BookmarkLinksMember> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, BookmarkLinksMember>((String key, dynamic value) {
          return MapEntry(key, BookmarkLinksMember.fromJson(value));
        }) ??
        <String, BookmarkLinksMember>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'BookmarkLinksMember[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
