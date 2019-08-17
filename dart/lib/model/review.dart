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

  Review.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    links = ReviewLinks.fromJson(json['_links']);
    createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }
    id = json['id'];
    reviewBody = json['reviewBody'];
    reviewRating = json['reviewRating'];
    type = json['type'];
    updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }
  }

  ReviewLinks links;

  DateTime createdAt;

  String id;

  String reviewBody;

  int reviewRating;
  // range from 1 to 5//

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is Review && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      '_links': links,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'id': id,
      'reviewBody': reviewBody,
      'reviewRating': reviewRating,
      'type': type,
      'updatedAt': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Review[links=$links, createdAt=$createdAt, id=$id, reviewBody=$reviewBody, reviewRating=$reviewRating, type=$type, updatedAt=$updatedAt, ]';
  }

  static List<Review> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Review>()
        : json.map((value) => Review.fromJson(value)).toList();
  }

  static Map<String, Review> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Review>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Review.fromJson(value));
    }
    return map;
  }
}
