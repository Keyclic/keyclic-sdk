part of keyclic_sdk_api.api;

class OrganizationPatchPreferencesNotificationReport {
  OrganizationPatchPreferencesNotificationReport({
    this.accepted,
    this.refused,
  });

  factory OrganizationPatchPreferencesNotificationReport.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OrganizationPatchPreferencesNotificationReport(
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

    return other is OrganizationPatchPreferencesNotificationReport &&
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

  static List<OrganizationPatchPreferencesNotificationReport> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <OrganizationPatchPreferencesNotificationReport>[]
        : json
            .map((dynamic value) =>
                OrganizationPatchPreferencesNotificationReport.fromJson(value))
            .toList();
  }

  static Map<String, OrganizationPatchPreferencesNotificationReport>
      mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, OrganizationPatchPreferencesNotificationReport>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] =
          OrganizationPatchPreferencesNotificationReport.fromJson(value));
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
    return 'OrganizationPatchPreferencesNotificationReport[accepted=$accepted, refused=$refused, ]';
  }
}
