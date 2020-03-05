part of keyclic_sdk_api.api;

class Review {
  Review({
    this.links,
    this.createdAt,
    this.id,
    this.reviewBody,
    this.reviewRating,
    this.type,
    this.updatedAt,
  });

  factory Review.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    DateTime createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }

    DateTime updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }

    return Review(
      links: ReviewLinks.fromJson(json['_links']),
      createdAt: createdAt,
      id: json['id'],
      reviewBody: json['reviewBody'],
      reviewRating: json['reviewRating'],
      type: json['type'],
      updatedAt: updatedAt,
    );
  }

  ReviewLinks links;

  DateTime createdAt;

  String id;

  String reviewBody;

  /// range from 1 to 5
  int reviewRating;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Review &&
        runtimeType == other.runtimeType &&
        links == other.links &&
        createdAt == other.createdAt &&
        id == other.id &&
        reviewBody == other.reviewBody &&
        reviewRating == other.reviewRating &&
        type == other.type &&
        updatedAt == other.updatedAt;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= links?.hashCode ?? 0;
    hashCode ^= createdAt?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= reviewBody?.hashCode ?? 0;
    hashCode ^= reviewRating?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= updatedAt?.hashCode ?? 0;

    return hashCode;
  }

  static List<Review> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => Review.fromJson(value))?.toList() ??
        <Review>[];
  }

  static Map<String, Review> mapFromJson(Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, Review.fromJson(value));
        }) ??
        <String, Review>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (links != null) '_links': links.toJson(),
      if (createdAt != null) 'createdAt': createdAt.toUtc().toIso8601String(),
      if (id != null) 'id': id,
      if (reviewBody != null) 'reviewBody': reviewBody,
      if (reviewRating != null) 'reviewRating': reviewRating,
      if (type != null) 'type': type,
      if (updatedAt != null) 'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Review[links=$links, createdAt=$createdAt, id=$id, reviewBody=$reviewBody, reviewRating=$reviewRating, type=$type, updatedAt=$updatedAt, ]';
  }
}
