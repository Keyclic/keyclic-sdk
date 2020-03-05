part of keyclic_sdk_api.api;

class Tracking {
  Tracking({
    this.checkpoints,
    this.progression,
    this.state,
    this.time,
  });

  factory Tracking.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Tracking(
      checkpoints: Checkpoint.listFromJson(json['checkpoints']),
      progression: TrackingProgression.fromJson(json['progression']),
      state: json['state'],
      time: json['time'],
    );
  }

  List<Checkpoint> checkpoints;

  TrackingProgression progression;

  String state;

  int time;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Tracking &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered()
            .equals(checkpoints, other.checkpoints) &&
        progression == other.progression &&
        state == other.state &&
        time == other.time;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (checkpoints is List && checkpoints.isNotEmpty) {
      hashCode ^= checkpoints
          .map((Checkpoint element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= progression?.hashCode ?? 0;
    hashCode ^= state?.hashCode ?? 0;
    hashCode ^= time?.hashCode ?? 0;

    return hashCode;
  }

  static List<Tracking> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => Tracking.fromJson(value))?.toList() ??
        <Tracking>[];
  }

  static Map<String, Tracking> mapFromJson(Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, Tracking.fromJson(value));
        }) ??
        <String, Tracking>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (checkpoints != null) 'checkpoints': checkpoints,
      if (progression != null) 'progression': progression.toJson(),
      if (state != null) 'state': state,
      if (time != null) 'time': time,
    };
  }

  @override
  String toString() {
    return 'Tracking[checkpoints=$checkpoints, progression=$progression, state=$state, time=$time, ]';
  }
}
