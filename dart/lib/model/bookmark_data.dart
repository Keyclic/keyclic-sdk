part of keyclic_sdk_api.api;

class BookmarkData {
  BookmarkData({
    this.member,
    this.place,
  });

  factory BookmarkData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BookmarkData(
      member: json['member'],
      place: json['place'],
    );
  }

  String member;

  String place;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BookmarkData &&
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

  static List<BookmarkData> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => BookmarkData.fromJson(value))
            ?.toList() ??
        <BookmarkData>[];
  }

  static Map<String, BookmarkData> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, BookmarkData>((String key, dynamic value) {
          return MapEntry(key, BookmarkData.fromJson(value));
        }) ??
        <String, BookmarkData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'member': member,
      'place': place,
    };
  }

  @override
  String toString() {
    return 'BookmarkData[member=$member, place=$place, ]';
  }
}
