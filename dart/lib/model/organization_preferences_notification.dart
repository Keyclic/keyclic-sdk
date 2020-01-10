part of keyclic_sdk_api.api;

class OrganizationPreferencesNotification {
  OrganizationPreferencesNotification({
    this.report,
  });

  factory OrganizationPreferencesNotification.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OrganizationPreferencesNotification(
      report:
          OrganizationPreferencesNotificationReport.fromJson(json['report']),
    );
  }

  OrganizationPreferencesNotificationReport report;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationPreferencesNotification &&
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

  static List<OrganizationPreferencesNotification> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <OrganizationPreferencesNotification>[]
        : json
            .map((dynamic value) =>
                OrganizationPreferencesNotification.fromJson(value))
            .toList();
  }

  static Map<String, OrganizationPreferencesNotification> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OrganizationPreferencesNotification>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OrganizationPreferencesNotification.fromJson(value));
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
    return 'OrganizationPreferencesNotification[report=$report, ]';
  }
}
