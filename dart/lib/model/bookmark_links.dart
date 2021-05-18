part of keyclic_sdk_api.api;

class BookmarkLinks {
  BookmarkLinks({
    this.member,
    this.place,
    this.self,
  });

  factory BookmarkLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BookmarkLinks(
      member: BookmarkLinksMember.fromJson(json['member']),
      place: BookmarkLinksPlace.fromJson(json['place']),
      self: BookmarkLinksSelf.fromJson(json['self']),
    );
  }

  BookmarkLinksMember member;

  BookmarkLinksPlace place;

  BookmarkLinksSelf self;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BookmarkLinks &&
        runtimeType == other.runtimeType &&
        member == other.member &&
        place == other.place &&
        self == other.self;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= member?.hashCode ?? 0;
    hashCode ^= place?.hashCode ?? 0;
    hashCode ^= self?.hashCode ?? 0;

    return hashCode;
  }

  static List<BookmarkLinks> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => BookmarkLinks.fromJson(value))
            ?.toList() ??
        <BookmarkLinks>[];
  }

  static Map<String, BookmarkLinks> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, BookmarkLinks>((String key, dynamic value) {
          return MapEntry(key, BookmarkLinks.fromJson(value));
        }) ??
        <String, BookmarkLinks>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (member != null) 'member': member.toJson(),
      if (place != null) 'place': place.toJson(),
      if (self != null) 'self': self.toJson(),
    };
  }

  @override
  String toString() {
    return 'BookmarkLinks[member=$member, place=$place, self=$self, ]';
  }
}
