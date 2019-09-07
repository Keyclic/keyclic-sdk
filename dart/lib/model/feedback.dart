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
    this.updatedAt,
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
    updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }
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

  DateTime updatedAt;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Feedback &&
        runtimeType == other.runtimeType &&
        embedded == other.embedded &&
        links == other.links &&
        createdAt == other.createdAt &&
        description == other.description &&
        geoCoordinates == other.geoCoordinates &&
        id == other.id &&
        DeepCollectionEquality.unordered().equals(metadata, other.metadata) &&
        public == other.public &&
        DeepCollectionEquality.unordered().equals(state, other.state) &&
        type == other.type &&
        updatedAt == other.updatedAt;
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      embedded.hashCode ^
      links.hashCode ^
      createdAt.hashCode ^
      description.hashCode ^
      geoCoordinates.hashCode ^
      id.hashCode ^
      metadata.keys.map((dynamic element) => element.hashCode).fold(0,
          (dynamic value, dynamic cursor) => value.hashCode ^ cursor.hashCode) ^
      metadata.values.map((dynamic element) => element.hashCode).fold(0,
          (dynamic value, dynamic cursor) => value.hashCode ^ cursor.hashCode) ^
      public.hashCode ^
      state.map((dynamic element) => element.hashCode).fold(0,
          (dynamic value, dynamic cursor) => value.hashCode ^ cursor.hashCode) ^
      type.hashCode ^
      updatedAt.hashCode;

  static List<Feedback> listFromJson(List<dynamic> json) {
    return json == null
        ? <Feedback>[]
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
      'updatedAt': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Feedback[embedded=$embedded, links=$links, createdAt=$createdAt, description=$description, geoCoordinates=$geoCoordinates, id=$id, metadata=$metadata, public=$public, state=$state, type=$type, updatedAt=$updatedAt, ]';
  }
}
