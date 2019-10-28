part of keyclic_sdk_api.api;

class PersonPatchPreferencesNotification {
  PersonPatchPreferencesNotification({
    this.mail,
    this.push,
  });

  PersonPatchPreferencesNotification.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mail = json['mail'];
    push = json['push'];
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
    return json == null
        ? <PersonPatchPreferencesNotification>[]
        : json
            .map((dynamic value) =>
                PersonPatchPreferencesNotification.fromJson(value))
            .toList();
  }

  static Map<String, PersonPatchPreferencesNotification> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PersonPatchPreferencesNotification>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PersonPatchPreferencesNotification.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (mail != null) 'mail': mail,
      if (push != null) 'push': push,
    };
  }

  @override
  String toString() {
    return 'PersonPatchPreferencesNotification[mail=$mail, push=$push, ]';
  }
}
