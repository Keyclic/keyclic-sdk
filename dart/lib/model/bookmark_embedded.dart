// @dart=2.10
part of keyclic_sdk_api.api;

class BookmarkEmbedded {
  BookmarkEmbedded({
    this.member,
    this.place,
  });

  factory BookmarkEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BookmarkEmbedded(
      member: Member.fromJson(json['member']),
      place: Place.fromJson(json['place']),
    );
  }

  Member member;

  Place place;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BookmarkEmbedded &&
        runtimeType == other.runtimeType &&
        member == other.member &&
        place == other.place;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= member?.hashCode ?? 0;
    hashCode ^= place?.hashCode ?? 0;

    return hashCode;
  }

  static List<BookmarkEmbedded> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => BookmarkEmbedded.fromJson(value))
            ?.toList() ??
        <BookmarkEmbedded>[];
  }

  static Map<String, BookmarkEmbedded> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, BookmarkEmbedded>((String key, dynamic value) {
          return MapEntry(key, BookmarkEmbedded.fromJson(value));
        }) ??
        <String, BookmarkEmbedded>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (member != null) 'member': member.toJson(),
      if (place != null) 'place': place.toJson(),
    };
  }

  @override
  String toString() {
    return 'BookmarkEmbedded[member=$member, place=$place, ]';
  }
}
