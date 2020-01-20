part of keyclic_sdk_api.api;

class ReportNotification {
  ReportNotification({
    this.accepted,
    this.refused,
  });

  factory ReportNotification.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportNotification(
      accepted: json['accepted'],
      refused: json['refused'],
    );
  }

  bool accepted;

  bool refused;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportNotification &&
        runtimeType == other.runtimeType &&
        accepted == other.accepted &&
        refused == other.refused;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= accepted?.hashCode ?? 0;
    hashCode ^= refused?.hashCode ?? 0;

    return hashCode;
  }

  static List<ReportNotification> listFromJson(List<dynamic> json) {
    return json == null
        ? <ReportNotification>[]
        : json
            .map((dynamic value) => ReportNotification.fromJson(value))
            .toList();
  }

  static Map<String, ReportNotification> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReportNotification>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportNotification.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (accepted != null) 'accepted': accepted,
      if (refused != null) 'refused': refused,
    };
  }

  @override
  String toString() {
    return 'ReportNotification[accepted=$accepted, refused=$refused, ]';
  }
}
