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

  factory Feedback.fromJson(Map<String, dynamic> json) {
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

    return Feedback(
      embedded: FeedbackEmbedded.fromJson(json['_embedded']),
      links: FeedbackLinks.fromJson(json['_links']),
      createdAt: createdAt,
      description: json['description'],
      geoCoordinates: GeoCoordinates.fromJson(json['geoCoordinates']),
      id: json['id'],
      metadata: json['metadata'],
      public: json['public'],
      state: json['state'] is List ? List<String>.from(json['state']) : null,
      type: json['type'],
      updatedAt: updatedAt,
    );
  }

  FeedbackEmbedded embedded;

  FeedbackLinks links;

  DateTime createdAt;

  String description;

  GeoCoordinates geoCoordinates;

  String id;

  String metadata;

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
        metadata == other.metadata &&
        public == other.public &&
        DeepCollectionEquality.unordered().equals(state, other.state) &&
        type == other.type &&
        updatedAt == other.updatedAt;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (state is List && state.isNotEmpty) {
      hashCode ^= state
          .map((String element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= embedded?.hashCode ?? 0;
    hashCode ^= links?.hashCode ?? 0;
    hashCode ^= createdAt?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= geoCoordinates?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= metadata?.hashCode ?? 0;
    hashCode ^= public?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= updatedAt?.hashCode ?? 0;

    return hashCode;
  }

  static List<Feedback> listFromJson(List<dynamic> json) {
    return json == null
        ? <Feedback>[]
        : json.map((dynamic value) => Feedback.fromJson(value)).toList();
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
      if (embedded != null) '_embedded': embedded,
      if (links != null) '_links': links,
      if (createdAt != null) 'createdAt': createdAt.toUtc().toIso8601String(),
      if (description != null) 'description': description,
      if (geoCoordinates != null) 'geoCoordinates': geoCoordinates,
      if (id != null) 'id': id,
      if (metadata != null) 'metadata': metadata,
      if (public != null) 'public': public,
      if (state != null) 'state': state,
      if (type != null) 'type': type,
      if (updatedAt != null) 'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Feedback[embedded=$embedded, links=$links, createdAt=$createdAt, description=$description, geoCoordinates=$geoCoordinates, id=$id, metadata=$metadata, public=$public, state=$state, type=$type, updatedAt=$updatedAt, ]';
  }
}
