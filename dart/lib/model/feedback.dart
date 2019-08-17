part of keyclic_sdk_api.api;

class Feedback {
  Feedback({
    this.embedded,
    this.links,
    this.createdAt,
    this.description,
    this.geoCoordinates,
    this.id,
    this.metadata,
    this.public,
    this.state,
    this.type,
  });

  Feedback.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    embedded = FeedbackEmbedded.fromJson(json['_embedded']);
    links = FeedbackLinks.fromJson(json['_links']);
    createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }
    description = json['description'];
    geoCoordinates = FeedbackGeoCoordinates.fromJson(json['geoCoordinates']);
    id = json['id'];
    metadata = json['metadata'];
    public = json['public'];
    state = (json['state'] as List)?.map((item) => item as String)?.toList();
    type = json['type'];
  }

  FeedbackEmbedded embedded;

  FeedbackLinks links;

  DateTime createdAt;

  String description;

  FeedbackGeoCoordinates geoCoordinates;

  String id;

  Map<String, dynamic> metadata;

  bool public;

  List<String> state;

  String type;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is Feedback &&
        runtimeType == other.runtimeType &&
        geoCoordinates == other.geoCoordinates &&
        DeepCollectionEquality.unordered().equals(state, other.state);
  }

  @override
  int get hashCode => 0 ^ geoCoordinates.hashCode;

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'description': description,
      'geoCoordinates': geoCoordinates,
      'id': id,
      'metadata': metadata,
      'public': public,
      'state': state,
      'type': type,
    };
  }

  @override
  String toString() {
    return 'Feedback[embedded=$embedded, links=$links, createdAt=$createdAt, description=$description, geoCoordinates=$geoCoordinates, id=$id, metadata=$metadata, public=$public, state=$state, type=$type, ]';
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
