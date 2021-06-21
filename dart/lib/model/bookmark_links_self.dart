// @dart=2.10
part of keyclic_sdk_api.api;

class BookmarkLinksSelf {
  BookmarkLinksSelf({
    this.href,
    this.iriTemplate,
  });

  factory BookmarkLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BookmarkLinksSelf(
      href: json['href'],
      iriTemplate: BookmarkLinksSelfIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the self associated to the given bookmark. */
  String href;

  BookmarkLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BookmarkLinksSelf &&
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

  static List<BookmarkLinksSelf> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => BookmarkLinksSelf.fromJson(value))
            ?.toList() ??
        <BookmarkLinksSelf>[];
  }

  static Map<String, BookmarkLinksSelf> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, BookmarkLinksSelf>((String key, dynamic value) {
          return MapEntry(key, BookmarkLinksSelf.fromJson(value));
        }) ??
        <String, BookmarkLinksSelf>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'BookmarkLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
