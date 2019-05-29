part of keyclic_sdk_api.api;

class Review {
  Review();

  Review.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    reviewBody = json['reviewBody'];
    reviewRating = json['reviewRating'];
    id = json['id'];
    createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }
    updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }
    type = json['type'];
    links = ReviewLinks.fromJson(json['_links']);
  }

  String reviewBody;

  int reviewRating;

  String id;

  DateTime createdAt;

  DateTime updatedAt;

  String type;

  ReviewLinks links;

  Map<String, dynamic> toJson() {
    return {
      'reviewBody': reviewBody,
      'reviewRating': reviewRating,
      'id': id,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updatedAt': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'type': type,
      '_links': links,
    };
  }

  @override
  String toString() {
    return 'Review[reviewBody=$reviewBody, reviewRating=$reviewRating, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, type=$type, links=$links, ]';
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
