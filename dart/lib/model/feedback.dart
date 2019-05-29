part of keyclic_sdk_api.api;

class Feedback {
  Feedback();

  Feedback.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    description = json['description'];
    geoCoordinates = FeedbackGeoCoordinates.fromJson(json['geoCoordinates']);
    metadata = json['metadata'];
    id = json['id'];
    state = (json['state'] as List)?.map((item) => item as String)?.toList();
    createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }
    type = json['type'];
    public = json['public'];
    links = FeedbackLinks.fromJson(json['_links']);
    embedded = FeedbackEmbedded.fromJson(json['_embedded']);
  }

  String description;

  FeedbackGeoCoordinates geoCoordinates;

  Map<String, dynamic> metadata;

  String id;

  List<String> state;

  DateTime createdAt;

  String type;

  bool public;

  FeedbackLinks links;

  FeedbackEmbedded embedded;

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'geoCoordinates': geoCoordinates,
      'metadata': metadata,
      'id': id,
      'state': state,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'type': type,
      'public': public,
      '_links': links,
      '_embedded': embedded,
    };
  }

  @override
  String toString() {
    return 'Feedback[description=$description, geoCoordinates=$geoCoordinates, metadata=$metadata, id=$id, state=$state, createdAt=$createdAt, type=$type, public=$public, links=$links, embedded=$embedded, ]';
  }

  static List<Feedback> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Feedback>()
        : json.map((value) => Feedback.fromJson(value)).toList();
  }

  static Map<String, Feedback> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Feedback>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Feedback.fromJson(value));
    }
    return map;
  }
}
