part of keyclic_sdk_api.api;

class Tracking {
  Tracking({
    this.checkpoints,
    this.progression,
    this.state,
    this.time,
  });

  Tracking.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    checkpoints = Checkpoint.listFromJson(json['checkpoints']);
    progression = TrackingProgression.fromJson(json['progression']);
    state = json['state'];
    time = json['time'];
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
  int get hashCode =>
      0 ^
      checkpoints.map((dynamic element) => element.hashCode).fold(0,
          (dynamic value, dynamic cursor) => value.hashCode ^ cursor.hashCode) ^
      progression.hashCode ^
      state.hashCode ^
      time.hashCode;

  static List<Tracking> listFromJson(List<dynamic> json) {
    return json == null
        ? <Tracking>[]
        : json.map((value) => Tracking.fromJson(value)).toList();
  }

  static Map<String, Tracking> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Tracking>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Tracking.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'checkpoints': checkpoints,
      'progression': progression,
      'state': state,
      'time': time,
    };
  }

  @override
  String toString() {
    return 'Tracking[checkpoints=$checkpoints, progression=$progression, state=$state, time=$time, ]';
  }
}
