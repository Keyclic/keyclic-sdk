part of keyclic_sdk_api.api;

class ReportEmbeddedDuration {
  ReportEmbeddedDuration({
    this.seconds,
  });

  ReportEmbeddedDuration.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    seconds = json['seconds'];
  }

  int seconds;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is ReportEmbeddedDuration && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'seconds': seconds,
    };
  }

  @override
  String toString() {
    return 'ReportEmbeddedDuration[seconds=$seconds, ]';
  }

  static List<ReportEmbeddedDuration> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ReportEmbeddedDuration>()
        : json.map((value) => ReportEmbeddedDuration.fromJson(value)).toList();
  }

  static Map<String, ReportEmbeddedDuration> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReportEmbeddedDuration>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportEmbeddedDuration.fromJson(value));
    }
    return map;
  }
}