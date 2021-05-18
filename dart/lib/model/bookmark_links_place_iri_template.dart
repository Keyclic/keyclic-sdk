part of keyclic_sdk_api.api;

class BookmarkLinksPlaceIriTemplate {
  BookmarkLinksPlaceIriTemplate({
    this.mapping,
  });

  factory BookmarkLinksPlaceIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BookmarkLinksPlaceIriTemplate(
      mapping: BookmarkLinksPlaceIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  BookmarkLinksPlaceIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BookmarkLinksPlaceIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= mapping?.hashCode ?? 0;

    return hashCode;
  }

  static List<BookmarkLinksPlaceIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                BookmarkLinksPlaceIriTemplate.fromJson(value))
            ?.toList() ??
        <BookmarkLinksPlaceIriTemplate>[];
  }

  static Map<String, BookmarkLinksPlaceIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, BookmarkLinksPlaceIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, BookmarkLinksPlaceIriTemplate.fromJson(value));
        }) ??
        <String, BookmarkLinksPlaceIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping?.toJson(),
    };
  }

  @override
  String toString() {
    return 'BookmarkLinksPlaceIriTemplate[mapping=$mapping, ]';
  }
}
