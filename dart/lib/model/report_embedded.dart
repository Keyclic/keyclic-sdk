part of keyclic_sdk_api.api;

class ReportEmbedded {
  ReportEmbedded({
    this.duration,
    this.stateTransitions,
    this.targetGroups,
    this.tracking,
  });

  factory ReportEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportEmbedded(
      duration: OperationEmbeddedDuration.fromJson(json['duration']),
      stateTransitions: json['stateTransitions'] is List
          ? List<String>.from(json['stateTransitions'])
          : null,
      targetGroups:
          ReportEmbeddedTargetGroups.listFromJson(json['targetGroups']),
      tracking: json['tracking'],
    );
  }

  OperationEmbeddedDuration duration;

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
  int get hashCode {
    int hashCode = 0;

    if (stateTransitions is List && stateTransitions.isNotEmpty) {
      hashCode ^= stateTransitions
          .map((String element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }
    if (targetGroups is List && targetGroups.isNotEmpty) {
      hashCode ^= targetGroups
          .map((ReportEmbeddedTargetGroups element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= duration?.hashCode ?? 0;
    hashCode ^= tracking?.hashCode ?? 0;

    return hashCode;
  }

  static List<ReportEmbedded> listFromJson(List<dynamic> json) {
    return json == null
        ? <ReportEmbedded>[]
        : json.map((dynamic value) => ReportEmbedded.fromJson(value)).toList();
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
      if (duration != null) 'duration': duration,
      if (stateTransitions != null) 'stateTransitions': stateTransitions,
      if (targetGroups != null) 'targetGroups': targetGroups,
      if (tracking != null) 'tracking': tracking,
    };
  }

  @override
  String toString() {
    return 'ReportEmbedded[duration=$duration, stateTransitions=$stateTransitions, targetGroups=$targetGroups, tracking=$tracking, ]';
  }
}
