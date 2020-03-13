part of keyclic_sdk_api.api;

class OrganizationPatchPreferences {
  OrganizationPatchPreferences({
    this.notification,
    this.reference,
  });

  factory OrganizationPatchPreferences.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OrganizationPatchPreferences(
      notification: OrganizationPatchPreferencesNotification.fromJson(
          json['notification']),
      reference:
          OrganizationPatchPreferencesReference.fromJson(json['reference']),
    );
  }

  OrganizationPatchPreferencesNotification notification;

  OrganizationPatchPreferencesReference reference;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationPatchPreferences &&
        runtimeType == other.runtimeType &&
        notification == other.notification &&
        reference == other.reference;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= notification?.hashCode ?? 0;
    hashCode ^= reference?.hashCode ?? 0;

    return hashCode;
  }

  static List<OrganizationPatchPreferences> listFromJson(List<dynamic> json) {
    return json
            ?.map(
                (dynamic value) => OrganizationPatchPreferences.fromJson(value))
            ?.toList() ??
        <OrganizationPatchPreferences>[];
  }

  static Map<String, OrganizationPatchPreferences> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, OrganizationPatchPreferences>(
            (String key, dynamic value) {
          return MapEntry(key, OrganizationPatchPreferences.fromJson(value));
        }) ??
        <String, OrganizationPatchPreferences>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (notification != null) 'notification': notification.toJson(),
      if (reference != null) 'reference': reference.toJson(),
    };
  }

  @override
  String toString() {
    return 'OrganizationPatchPreferences[notification=$notification, reference=$reference, ]';
  }
}
