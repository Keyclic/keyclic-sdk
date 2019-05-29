part of keyclic_sdk_api.api;

class FeedbackReviewRequest {
  FeedbackReviewRequest();

  FeedbackReviewRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    id = json['id'];
    createdAt = json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }
    updatedAt = json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }
    type = json['type'];
    links = FeedbackReviewRequestLinks.fromJson(json['_links']);
  }

  String id;

  DateTime createdAt;

  DateTime updatedAt;

  String type;

  FeedbackReviewRequestLinks links;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updatedAt': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'type': type,
      '_links': links,
    };
  }

  @override
  String toString() {
    return 'FeedbackReviewRequest[id=$id, createdAt=$createdAt, updatedAt=$updatedAt, type=$type, links=$links, ]';
  }

  static List<FeedbackReviewRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<FeedbackReviewRequest>() : json.map((value) => FeedbackReviewRequest.fromJson(value)).toList();
  }

  static Map<String, FeedbackReviewRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FeedbackReviewRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FeedbackReviewRequest.fromJson(value));
    }
    return map;
  }
}
