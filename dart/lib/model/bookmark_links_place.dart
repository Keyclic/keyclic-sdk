// @dart=2.10
part of keyclic_sdk_api.api;

class BookmarkLinksPlace {
  BookmarkLinksPlace({
    this.href,
    this.iriTemplate,
  });

  factory BookmarkLinksPlace.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BookmarkLinksPlace(
      href: json['href'],
      iriTemplate: BookmarkLinksPlaceIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the place associated to the given bookmark. */
  String href;

  BookmarkLinksPlaceIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BookmarkLinksPlace &&
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

  static List<BookmarkLinksPlace> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => BookmarkLinksPlace.fromJson(value))
            ?.toList() ??
        <BookmarkLinksPlace>[];
  }

  static Map<String, BookmarkLinksPlace> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, BookmarkLinksPlace>((String key, dynamic value) {
          return MapEntry(key, BookmarkLinksPlace.fromJson(value));
        }) ??
        <String, BookmarkLinksPlace>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'BookmarkLinksPlace[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
