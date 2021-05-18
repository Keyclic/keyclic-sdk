part of keyclic_sdk_api.api;

class TrackingCheckpoint {
  TrackingCheckpoint({
    this.createdAt,
    this.data,
    this.state,
    this.links,
    this.embedded,
  });

  factory TrackingCheckpoint.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    DateTime createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }

    return TrackingCheckpoint(
      createdAt: createdAt,
      data: CheckpointState.fromJson(json['data']),
      state: json['state'] is List ? List<String>.from(json['state']) : null,
      links: CheckpointLinks.fromJson(json['_links']),
      embedded: CheckpointEmbedded.fromJson(json['_embedded']),
    );
  }

  DateTime createdAt;

  CheckpointState data;

  List<String> state;

  CheckpointLinks links;

  CheckpointEmbedded embedded;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is TrackingCheckpoint &&
        runtimeType == other.runtimeType &&
        createdAt == other.createdAt &&
        data == other.data &&
        DeepCollectionEquality.unordered().equals(state, other.state) &&
        links == other.links &&
        embedded == other.embedded;
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

    hashCode ^= createdAt?.hashCode ?? 0;
    hashCode ^= data?.hashCode ?? 0;
    hashCode ^= links?.hashCode ?? 0;
    hashCode ^= embedded?.hashCode ?? 0;

    return hashCode;
  }

  static List<TrackingCheckpoint> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => TrackingCheckpoint.fromJson(value))
            ?.toList() ??
        <TrackingCheckpoint>[];
  }

  static Map<String, TrackingCheckpoint> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, TrackingCheckpoint>((String key, dynamic value) {
          return MapEntry(key, TrackingCheckpoint.fromJson(value));
        }) ??
        <String, TrackingCheckpoint>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'createdAt': createdAt?.toUtc()?.toIso8601String(),
      'data': data?.toJson(),
      'state': state,
      '_links': links?.toJson(),
      '_embedded': embedded?.toJson(),
    };
  }

  @override
  String toString() {
    return 'TrackingCheckpoint[createdAt=$createdAt, data=$data, state=$state, links=$links, embedded=$embedded, ]';
  }
}
