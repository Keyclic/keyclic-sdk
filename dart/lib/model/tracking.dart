part of keyclic_sdk_api.api;

class Tracking {
  Tracking({
    this.state,
    this.progression,
    this.time,
    this.checkpoints,
  });

  Tracking.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    state = json['state'];
    progression = TrackingProgression.fromJson(json['progression']);
    time = json['time'];
    checkpoints = Checkpoint.listFromJson(json['checkpoints']);
  }

  String state;

  TrackingProgression progression;

  int time;

  List<Checkpoint> checkpoints;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is Tracking &&
        runtimeType == other.runtimeType &&
        state == other.state &&
        progression == other.progression;
  }

  @override
  int get hashCode => 0 ^ state.hashCode ^ progression.hashCode;

  Map<String, dynamic> toJson() {
    return {
      'state': state,
      'progression': progression,
      'time': time,
      'checkpoints': checkpoints,
    };
  }

  @override
  String toString() {
    return 'Tracking[state=$state, progression=$progression, time=$time, checkpoints=$checkpoints, ]';
  }

  static List<Tracking> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Tracking>()
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
}
