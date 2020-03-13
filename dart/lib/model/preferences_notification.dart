part of keyclic_sdk_api.api;

class PreferencesNotification {
  PreferencesNotification({
    this.report,
  });

  factory PreferencesNotification.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PreferencesNotification(
      report: NotificationReportNotification.fromJson(json['report']),
    );
  }

  NotificationReportNotification report;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PreferencesNotification &&
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

  static List<PreferencesNotification> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PreferencesNotification.fromJson(value))
            ?.toList() ??
        <PreferencesNotification>[];
  }

  static Map<String, PreferencesNotification> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, PreferencesNotification>((String key, dynamic value) {
          return MapEntry(key, PreferencesNotification.fromJson(value));
        }) ??
        <String, PreferencesNotification>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (report != null) 'report': report.toJson(),
    };
  }

  @override
  String toString() {
    return 'PreferencesNotification[report=$report, ]';
  }
}
