part of keyclic_sdk_api.api;

class FeedbackEmbedded {
  FeedbackEmbedded({
    this.stateTransitions,
    this.tracking,
  });

  FeedbackEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    if (json['stateTransitions'] is List) {
      stateTransitions = List<String>.from(json['stateTransitions']);
    }
    tracking = json['tracking'];
  }

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
        DeepCollectionEquality.unordered()
            .equals(stateTransitions, other.stateTransitions) &&
        tracking == other.tracking;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (stateTransitions is List && stateTransitions.isNotEmpty) {
      hashCode ^= stateTransitions
          .map((String element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= tracking?.hashCode ?? 0;

    return hashCode;
  }

  static List<FeedbackEmbedded> listFromJson(List<dynamic> json) {
    return json == null
        ? <FeedbackEmbedded>[]
        : json
            .map((dynamic value) => FeedbackEmbedded.fromJson(value))
            .toList();
  }

  static Map<String, FeedbackEmbedded> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FeedbackEmbedded>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackEmbedded.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (stateTransitions != null) 'stateTransitions': stateTransitions,
      if (tracking != null) 'tracking': tracking,
    };
  }

  @override
  String toString() {
    return 'FeedbackEmbedded[stateTransitions=$stateTransitions, tracking=$tracking, ]';
  }
}
