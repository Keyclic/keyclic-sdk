// @dart=2.10
part of keyclic_sdk_api.api;

class PersonPatchPreferences {
  PersonPatchPreferences({
    this.notification,
  });

  factory PersonPatchPreferences.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PersonPatchPreferences(
      notification:
          PersonPatchPreferencesNotification.fromJson(json['notification']),
    );
  }

  PersonPatchPreferencesNotification notification;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PersonPatchPreferences &&
        runtimeType == other.runtimeType &&
        notification == other.notification;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= notification?.hashCode ?? 0;

    return hashCode;
  }

  static List<PersonPatchPreferences> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PersonPatchPreferences.fromJson(value))
            ?.toList() ??
        <PersonPatchPreferences>[];
  }

  static Map<String, PersonPatchPreferences> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, PersonPatchPreferences>((String key, dynamic value) {
          return MapEntry(key, PersonPatchPreferences.fromJson(value));
        }) ??
        <String, PersonPatchPreferences>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (notification != null) 'notification': notification.toJson(),
    };
  }

  @override
  String toString() {
    return 'PersonPatchPreferences[notification=$notification, ]';
  }
}
