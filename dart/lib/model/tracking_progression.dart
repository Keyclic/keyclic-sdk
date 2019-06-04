part of keyclic_sdk_api.api;

class TrackingProgression {
  TrackingProgression({
    this.resolved,
    this.total,
  });

  TrackingProgression.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    resolved = json['resolved']?.toDouble();
    total = json['total'];
  }

  double resolved;

  int total;

  Map<String, dynamic> toJson() {
    return {
      'resolved': resolved,
      'total': total,
    };
  }

  @override
  String toString() {
    return 'TrackingProgression[resolved=$resolved, total=$total, ]';
  }

  static List<TrackingProgression> listFromJson(List<dynamic> json) {
    return json == null
        ? List<TrackingProgression>()
        : json.map((value) => TrackingProgression.fromJson(value)).toList();
  }

  static Map<String, TrackingProgression> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, TrackingProgression>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = TrackingProgression.fromJson(value));
    }
    return map;
  }
}
