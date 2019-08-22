part of keyclic_sdk_api.api;

class ReportEmbedded {
  ReportEmbedded({
    this.duration,
    this.stateTransitions,
    this.targetGroups,
    this.tracking,
  });

  ReportEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    duration = ReportEmbeddedDuration.fromJson(json['duration']);
    stateTransitions = (json['stateTransitions'] as List)
        ?.map((item) => item as String)
        ?.toList();
    targetGroups =
        ReportEmbeddedTargetGroups.listFromJson(json['targetGroups']);
    tracking = json['tracking'];
  }

  ReportEmbeddedDuration duration;

  List<String> stateTransitions;

  List<ReportEmbeddedTargetGroups> targetGroups;

  String tracking;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportEmbedded &&
        runtimeType == other.runtimeType &&
        duration == other.duration &&
        DeepCollectionEquality.unordered()
            .equals(stateTransitions, other.stateTransitions) &&
        DeepCollectionEquality.unordered()
            .equals(targetGroups, other.targetGroups) &&
        tracking == other.tracking;
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      duration.hashCode ^
      stateTransitions.map((dynamic element) => element.hashCode).fold(0,
          (dynamic value, dynamic cursor) => value.hashCode ^ cursor.hashCode) ^
      targetGroups.map((dynamic element) => element.hashCode).fold(0,
          (dynamic value, dynamic cursor) => value.hashCode ^ cursor.hashCode) ^
      tracking.hashCode;

  static List<ReportEmbedded> listFromJson(List<dynamic> json) {
    return json == null
        ? <ReportEmbedded>[]
        : json.map((value) => ReportEmbedded.fromJson(value)).toList();
  }

  static Map<String, ReportEmbedded> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReportEmbedded>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportEmbedded.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'duration': duration,
      'stateTransitions': stateTransitions,
      'targetGroups': targetGroups,
      'tracking': tracking,
    };
  }

  @override
  String toString() {
    return 'ReportEmbedded[duration=$duration, stateTransitions=$stateTransitions, targetGroups=$targetGroups, tracking=$tracking, ]';
  }
}
