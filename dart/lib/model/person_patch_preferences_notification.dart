part of keyclic_sdk_api.api;

class PersonPatchPreferencesNotification {
  PersonPatchPreferencesNotification({
    this.mail,
    this.push,
  });

  factory PersonPatchPreferencesNotification.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PersonPatchPreferencesNotification(
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

    return other is PersonPatchPreferencesNotification &&
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

  static List<PersonPatchPreferencesNotification> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                PersonPatchPreferencesNotification.fromJson(value))
            ?.toList() ??
        <PersonPatchPreferencesNotification>[];
  }

  static Map<String, PersonPatchPreferencesNotification> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, PersonPatchPreferencesNotification>(
            (String key, dynamic value) {
          return MapEntry(
              key, PersonPatchPreferencesNotification.fromJson(value));
        }) ??
        <String, PersonPatchPreferencesNotification>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'mail': mail,
      'push': push,
    };
  }

  @override
  String toString() {
    return 'PersonPatchPreferencesNotification[mail=$mail, push=$push, ]';
  }
}
