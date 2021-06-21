// @dart=2.10
part of keyclic_sdk_api.api;

class BookmarkLinksPlaceIriTemplateMapping {
  BookmarkLinksPlaceIriTemplateMapping({
    this.place,
  });

  factory BookmarkLinksPlaceIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BookmarkLinksPlaceIriTemplateMapping(
      place: json['place'],
    );
  }

  String place;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BookmarkLinksPlaceIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        place == other.place;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= place?.hashCode ?? 0;

    return hashCode;
  }

  static List<BookmarkLinksPlaceIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                BookmarkLinksPlaceIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <BookmarkLinksPlaceIriTemplateMapping>[];
  }

  static Map<String, BookmarkLinksPlaceIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, BookmarkLinksPlaceIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(
              key, BookmarkLinksPlaceIriTemplateMapping.fromJson(value));
        }) ??
        <String, BookmarkLinksPlaceIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (place != null) 'place': place,
    };
  }

  @override
  String toString() {
    return 'BookmarkLinksPlaceIriTemplateMapping[place=$place, ]';
  }
}
