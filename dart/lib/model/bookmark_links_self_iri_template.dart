part of keyclic_sdk_api.api;

class BookmarkLinksSelfIriTemplate {
  BookmarkLinksSelfIriTemplate({
    this.mapping,
  });

  factory BookmarkLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BookmarkLinksSelfIriTemplate(
      mapping: BookmarkLinksSelfIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  BookmarkLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BookmarkLinksSelfIriTemplate &&
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

  static List<BookmarkLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map(
                (dynamic value) => BookmarkLinksSelfIriTemplate.fromJson(value))
            ?.toList() ??
        <BookmarkLinksSelfIriTemplate>[];
  }

  static Map<String, BookmarkLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, BookmarkLinksSelfIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, BookmarkLinksSelfIriTemplate.fromJson(value));
        }) ??
        <String, BookmarkLinksSelfIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping?.toJson(),
    };
  }

  @override
  String toString() {
    return 'BookmarkLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
