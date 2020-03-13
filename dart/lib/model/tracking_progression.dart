part of keyclic_sdk_api.api;

class TrackingProgression {
  TrackingProgression({
    this.resolved,
    this.total,
  });

  factory TrackingProgression.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return TrackingProgression(
      resolved: json['resolved']?.toDouble(),
      total: json['total'],
    );
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

    hashCode ^= resolved?.hashCode ?? 0;
    hashCode ^= total?.hashCode ?? 0;

    return hashCode;
  }

  static List<TrackingProgression> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => TrackingProgression.fromJson(value))
            ?.toList() ??
        <TrackingProgression>[];
  }

  static Map<String, TrackingProgression> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, TrackingProgression>((String key, dynamic value) {
          return MapEntry(key, TrackingProgression.fromJson(value));
        }) ??
        <String, TrackingProgression>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (resolved != null) 'resolved': resolved,
      if (total != null) 'total': total,
    };
  }

  @override
  String toString() {
    return 'TrackingProgression[resolved=$resolved, total=$total, ]';
  }
}
