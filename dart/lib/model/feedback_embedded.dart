part of keyclic_sdk_api.api;

class FeedbackEmbedded {
  FeedbackEmbedded({
    this.markers,
    this.reporter,
    this.stateTransitions,
    this.tracking,
  });

  factory FeedbackEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackEmbedded(
      markers: Marker.listFromJson(json['markers']),
      reporter: Person.fromJson(json['reporter']),
      stateTransitions: json['stateTransitions'] is List
          ? List<String>.from(json['stateTransitions'])
          : null,
      tracking: json['tracking'],
    );
  }

  List<Marker> markers;

  Person reporter;

  List<String> stateTransitions;

  String tracking;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackEmbedded &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(markers, other.markers) &&
        reporter == other.reporter &&
        DeepCollectionEquality.unordered()
            .equals(stateTransitions, other.stateTransitions) &&
        tracking == other.tracking;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (markers is List && markers.isNotEmpty) {
      hashCode ^= markers
          .map((Marker element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }
    if (stateTransitions is List && stateTransitions.isNotEmpty) {
      hashCode ^= stateTransitions
          .map((String element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= reporter?.hashCode ?? 0;
    hashCode ^= tracking?.hashCode ?? 0;

    return hashCode;
  }

  static List<FeedbackEmbedded> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => FeedbackEmbedded.fromJson(value))
            ?.toList() ??
        <FeedbackEmbedded>[];
  }

  static Map<String, FeedbackEmbedded> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, FeedbackEmbedded>((String key, dynamic value) {
          return MapEntry(key, FeedbackEmbedded.fromJson(value));
        }) ??
        <String, FeedbackEmbedded>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (markers != null) 'markers': markers,
      if (reporter != null) 'reporter': reporter.toJson(),
      if (stateTransitions != null) 'stateTransitions': stateTransitions,
      if (tracking != null) 'tracking': tracking,
    };
  }

  @override
  String toString() {
    return 'FeedbackEmbedded[markers=$markers, reporter=$reporter, stateTransitions=$stateTransitions, tracking=$tracking, ]';
  }
}
