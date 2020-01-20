part of keyclic_sdk_api.api;

class Notification {
  Notification({
    this.report,
  });

  factory Notification.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Notification(
      report: ReportNotification.fromJson(json['report']),
    );
  }

  ReportNotification report;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Notification &&
        runtimeType == other.runtimeType &&
        report == other.report;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= report?.hashCode ?? 0;

    return hashCode;
  }

  static List<Notification> listFromJson(List<dynamic> json) {
    return json == null
        ? <Notification>[]
        : json.map((dynamic value) => Notification.fromJson(value)).toList();
  }

  static Map<String, Notification> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Notification>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = Notification.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (report != null) 'report': report,
    };
  }

  @override
  String toString() {
    return 'Notification[report=$report, ]';
  }
}
