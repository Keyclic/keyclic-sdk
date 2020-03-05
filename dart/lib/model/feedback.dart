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
      geoCoordinates: FeedbackGeoCoordinates.fromJson(json['geoCoordinates']),
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
  int get hashCode {
    int hashCode = 0;

    if (state is List && state.isNotEmpty) {
      hashCode ^= state
          .map((String element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    if (metadata is Map && metadata.isNotEmpty) {
      hashCode ^= metadata.keys
          .map((dynamic element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
      hashCode ^= metadata.values
          .map((dynamic element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= embedded?.hashCode ?? 0;
    hashCode ^= links?.hashCode ?? 0;
    hashCode ^= createdAt?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= geoCoordinates?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= public?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= updatedAt?.hashCode ?? 0;

    return hashCode;
  }

  static List<Feedback> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => Feedback.fromJson(value))?.toList() ??
        <Feedback>[];
  }

  static Map<String, Feedback> mapFromJson(Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, Feedback.fromJson(value));
        }) ??
        <String, Feedback>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (embedded != null) '_embedded': embedded.toJson(),
      if (links != null) '_links': links.toJson(),
      if (createdAt != null) 'createdAt': createdAt.toUtc().toIso8601String(),
      if (description != null) 'description': description,
      if (geoCoordinates != null) 'geoCoordinates': geoCoordinates.toJson(),
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
