part of keyclic_sdk_api.api;

class PersonPreferences {
  PersonPreferences({
    this.notification,
  });

  factory PersonPreferences.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PersonPreferences(
      notification: PreferencesNotification.fromJson(json['notification']),
    );
  }

  PreferencesNotification notification;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PersonPreferences &&
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

  static List<PersonPreferences> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PersonPreferences.fromJson(value))
            ?.toList() ??
        <PersonPreferences>[];
  }

  static Map<String, PersonPreferences> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, PersonPreferences>((String key, dynamic value) {
          return MapEntry(key, PersonPreferences.fromJson(value));
        }) ??
        <String, PersonPreferences>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (notification != null) 'notification': notification.toJson(),
    };
  }

  @override
  String toString() {
    return 'PersonPreferences[notification=$notification, ]';
  }
}
