part of keyclic_sdk_api.api;

class PreferencesNotification {
  PreferencesNotification({
    this.mail,
    this.push,
  });

  factory PreferencesNotification.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PreferencesNotification(
      mail: json['mail'],
      push: json['push'],
    );
  }

  bool mail;

  bool push;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PreferencesNotification &&
        runtimeType == other.runtimeType &&
        mail == other.mail &&
        push == other.push;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= mail?.hashCode ?? 0;
    hashCode ^= push?.hashCode ?? 0;

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
      'mail': mail,
      'push': push,
    };
  }

  @override
  String toString() {
    return 'PreferencesNotification[mail=$mail, push=$push, ]';
  }
}
