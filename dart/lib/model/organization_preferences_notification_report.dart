part of keyclic_sdk_api.api;

class OrganizationPreferencesNotificationReport {
  OrganizationPreferencesNotificationReport({
    this.accepted,
    this.refused,
  });

  factory OrganizationPreferencesNotificationReport.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OrganizationPreferencesNotificationReport(
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

    return other is OrganizationPreferencesNotificationReport &&
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

  static List<OrganizationPreferencesNotificationReport> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <OrganizationPreferencesNotificationReport>[]
        : json
            .map((dynamic value) =>
                OrganizationPreferencesNotificationReport.fromJson(value))
            .toList();
  }

  static Map<String, OrganizationPreferencesNotificationReport> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OrganizationPreferencesNotificationReport>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OrganizationPreferencesNotificationReport.fromJson(value));
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
    return 'OrganizationPreferencesNotificationReport[accepted=$accepted, refused=$refused, ]';
  }
}
