part of keyclic_sdk_api.api;

class Feedback {
  Feedback({
    this.description,
    this.geoCoordinates,
    this.metadata,
    this.id,
    this.state,
    this.createdAt,
    this.type,
    this.public,
    this.links,
    this.embedded,
  });

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

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is Feedback &&
        runtimeType == other.runtimeType &&
        geoCoordinates == other.geoCoordinates &&
        id == other.id &&
        DeepCollectionEquality.unordered().equals(state, other.state);
  }

  @override
  int get hashCode => 0 ^ geoCoordinates.hashCode ^ id.hashCode;

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
