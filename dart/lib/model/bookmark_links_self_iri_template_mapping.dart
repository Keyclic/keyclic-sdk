part of keyclic_sdk_api.api;

class BookmarkLinksSelfIriTemplateMapping {
  BookmarkLinksSelfIriTemplateMapping({
    this.bookmark,
  });

  factory BookmarkLinksSelfIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BookmarkLinksSelfIriTemplateMapping(
      bookmark: json['bookmark'],
    );
  }

  String bookmark;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BookmarkLinksSelfIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        bookmark == other.bookmark;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= bookmark?.hashCode ?? 0;

    return hashCode;
  }

  static List<BookmarkLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                BookmarkLinksSelfIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <BookmarkLinksSelfIriTemplateMapping>[];
  }

  static Map<String, BookmarkLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, BookmarkLinksSelfIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(
              key, BookmarkLinksSelfIriTemplateMapping.fromJson(value));
        }) ??
        <String, BookmarkLinksSelfIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'bookmark': bookmark,
    };
  }

  @override
  String toString() {
    return 'BookmarkLinksSelfIriTemplateMapping[bookmark=$bookmark, ]';
  }
}
