part of keyclic_sdk_api.api;

class OrganizationPatchPreferencesNotification {
  OrganizationPatchPreferencesNotification({
    this.report,
  });

  factory OrganizationPatchPreferencesNotification.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OrganizationPatchPreferencesNotification(
      report: OrganizationPatchPreferencesNotificationReport.fromJson(
          json['report']),
    );
  }

  OrganizationPatchPreferencesNotificationReport report;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationPatchPreferencesNotification &&
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

  static List<OrganizationPatchPreferencesNotification> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <OrganizationPatchPreferencesNotification>[]
        : json
            .map((dynamic value) =>
                OrganizationPatchPreferencesNotification.fromJson(value))
            .toList();
  }

  static Map<String, OrganizationPatchPreferencesNotification> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OrganizationPatchPreferencesNotification>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OrganizationPatchPreferencesNotification.fromJson(value));
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
    return 'OrganizationPatchPreferencesNotification[report=$report, ]';
  }
}
