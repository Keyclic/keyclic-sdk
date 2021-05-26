part of keyclic_sdk_api.api;

class BookmarkLinksMemberIriTemplate {
  BookmarkLinksMemberIriTemplate({
    this.mapping,
  });

  factory BookmarkLinksMemberIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BookmarkLinksMemberIriTemplate(
      mapping: BookmarkLinksMemberIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  BookmarkLinksMemberIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BookmarkLinksMemberIriTemplate &&
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

  static List<BookmarkLinksMemberIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                BookmarkLinksMemberIriTemplate.fromJson(value))
            ?.toList() ??
        <BookmarkLinksMemberIriTemplate>[];
  }

  static Map<String, BookmarkLinksMemberIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, BookmarkLinksMemberIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, BookmarkLinksMemberIriTemplate.fromJson(value));
        }) ??
        <String, BookmarkLinksMemberIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'BookmarkLinksMemberIriTemplate[mapping=$mapping, ]';
  }
}
