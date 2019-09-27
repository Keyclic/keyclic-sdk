part of keyclic_sdk_api.api;

class PersonPatchPreferences {
  PersonPatchPreferences({
    this.messageEmailEnabled,
    this.messagePushEnabled,
  });

  PersonPatchPreferences.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    messageEmailEnabled = json['messageEmailEnabled'];
    messagePushEnabled = json['messagePushEnabled'];
  }

  bool messageEmailEnabled;

  bool messagePushEnabled;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PersonPatchPreferences &&
        runtimeType == other.runtimeType &&
        messageEmailEnabled == other.messageEmailEnabled &&
        messagePushEnabled == other.messagePushEnabled;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= messageEmailEnabled?.hashCode ?? 0;
    hashCode ^= messagePushEnabled?.hashCode ?? 0;

    return hashCode;
  }

  static List<PersonPatchPreferences> listFromJson(List<dynamic> json) {
    return json == null
        ? <PersonPatchPreferences>[]
        : json
            .map((dynamic value) => PersonPatchPreferences.fromJson(value))
            .toList();
  }

  static Map<String, PersonPatchPreferences> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PersonPatchPreferences>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PersonPatchPreferences.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'messageEmailEnabled': messageEmailEnabled,
      'messagePushEnabled': messagePushEnabled,
    };
  }

  @override
  String toString() {
    return 'PersonPatchPreferences[messageEmailEnabled=$messageEmailEnabled, messagePushEnabled=$messagePushEnabled, ]';
  }
}
