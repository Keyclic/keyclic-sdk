// @dart=2.10
part of keyclic_sdk_api.api;

class Metric {
  Metric({
    this.name,
    this.duration,
  });

  factory Metric.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Metric(
      name: json['name'],
      duration: Duration.fromJson(json['duration']),
    );
  }

  String name;

  Duration duration;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Metric &&
        runtimeType == other.runtimeType &&
        name == other.name &&
        duration == other.duration;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= duration?.hashCode ?? 0;

    return hashCode;
  }

  static List<Metric> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => Metric.fromJson(value))?.toList() ??
        <Metric>[];
  }

  static Map<String, Metric> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, Metric>((String key, dynamic value) {
          return MapEntry(key, Metric.fromJson(value));
        }) ??
        <String, Metric>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (name != null) 'name': name,
      if (duration != null) 'duration': duration.toJson(),
    };
  }

  @override
  String toString() {
    return 'Metric[name=$name, duration=$duration, ]';
  }
}
