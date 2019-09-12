part of keyclic_sdk_api.api;

class OperationEmbedded {
  OperationEmbedded({
    this.duration,
    this.stateTransitions,
    this.tracking,
  });

  OperationEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    duration = OperationEmbeddedDuration.fromJson(json['duration']);
    if (json['stateTransitions'] is List) {
      stateTransitions = List<String>.from(json['stateTransitions']);
    }
    tracking = json['tracking'];
  }

  OperationEmbeddedDuration duration;

  List<String> stateTransitions;

  String tracking;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationEmbedded &&
        runtimeType == other.runtimeType &&
        duration == other.duration &&
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

    hashCode ^= (duration?.hashCode ?? 0);
    hashCode ^= (tracking?.hashCode ?? 0);

    return hashCode;
  }

  static List<OperationEmbedded> listFromJson(List<dynamic> json) {
    return json == null
        ? <OperationEmbedded>[]
        : json
            .map((dynamic value) => OperationEmbedded.fromJson(value))
            .toList();
  }

  static Map<String, OperationEmbedded> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, OperationEmbedded>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OperationEmbedded.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'duration': duration,
      'stateTransitions': stateTransitions,
      'tracking': tracking,
    };
  }

  @override
  String toString() {
    return 'OperationEmbedded[duration=$duration, stateTransitions=$stateTransitions, tracking=$tracking, ]';
  }
}
