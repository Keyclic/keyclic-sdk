part of keyclic_sdk_api.api;

class BookmarkLinksMemberIriTemplateMapping {
  BookmarkLinksMemberIriTemplateMapping({
    this.member,
  });

  factory BookmarkLinksMemberIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BookmarkLinksMemberIriTemplateMapping(
      member: json['member'],
    );
  }

  String member;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BookmarkLinksMemberIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        member == other.member;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= member?.hashCode ?? 0;

    return hashCode;
  }

  static List<BookmarkLinksMemberIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                BookmarkLinksMemberIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <BookmarkLinksMemberIriTemplateMapping>[];
  }

  static Map<String, BookmarkLinksMemberIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, BookmarkLinksMemberIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(
              key, BookmarkLinksMemberIriTemplateMapping.fromJson(value));
        }) ??
        <String, BookmarkLinksMemberIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'member': member,
    };
  }

  @override
  String toString() {
    return 'BookmarkLinksMemberIriTemplateMapping[member=$member, ]';
  }
}
