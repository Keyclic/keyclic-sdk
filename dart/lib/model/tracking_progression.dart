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

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is TrackingProgression &&
        runtimeType == other.runtimeType &&
        resolved == other.resolved &&
        total == other.total;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= (resolved?.hashCode ?? 0);
    hashCode ^= (total?.hashCode ?? 0);

    return hashCode;
  }

  static List<TrackingProgression> listFromJson(List<dynamic> json) {
    return json == null
        ? <TrackingProgression>[]
        : json
            .map((dynamic value) => TrackingProgression.fromJson(value))
            .toList();
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
}
