part of keyclic_sdk_api.api;

class ReviewRequest {
  ReviewRequest({
    this.links,
    this.createdAt,
    this.id,
    this.type,
    this.updatedAt,
  });

  ReviewRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    links = ReviewRequestLinks.fromJson(json['_links']);
    createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }
    id = json['id'];
    type = json['type'];
    updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }
  }

  ReviewRequestLinks links;

  DateTime createdAt;

  String id;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequest &&
        runtimeType == other.runtimeType &&
        links == other.links &&
        createdAt == other.createdAt &&
        id == other.id &&
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
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= updatedAt?.hashCode ?? 0;

    return hashCode;
  }

  static List<ReviewRequest> listFromJson(List<dynamic> json) {
    return json == null
        ? <ReviewRequest>[]
        : json.map((dynamic value) => ReviewRequest.fromJson(value)).toList();
  }

  static Map<String, ReviewRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReviewRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReviewRequest.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (links != null) '_links': links,
      if (createdAt != null) 'createdAt': createdAt.toUtc().toIso8601String(),
      if (id != null) 'id': id,
      if (type != null) 'type': type,
      if (updatedAt != null) 'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'ReviewRequest[links=$links, createdAt=$createdAt, id=$id, type=$type, updatedAt=$updatedAt, ]';
  }
}
