part of keyclic_sdk_api.api;

class FeedbackReviewRequest {
  FeedbackReviewRequest({
    this.links,
    this.createdAt,
    this.id,
    this.type,
    this.updatedAt,
  });

  FeedbackReviewRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    links = FeedbackReviewRequestLinks.fromJson(json['_links']);
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

  FeedbackReviewRequestLinks links;

  DateTime createdAt;

  String id;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackReviewRequest && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<FeedbackReviewRequest> listFromJson(List<dynamic> json) {
    return json == null
        ? List<FeedbackReviewRequest>()
        : json.map((value) => FeedbackReviewRequest.fromJson(value)).toList();
  }

  static Map<String, FeedbackReviewRequest> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackReviewRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackReviewRequest.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      '_links': links,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'id': id,
      'type': type,
      'updatedAt': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'FeedbackReviewRequest[links=$links, createdAt=$createdAt, id=$id, type=$type, updatedAt=$updatedAt, ]';
  }
}
