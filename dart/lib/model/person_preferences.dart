part of keyclic_sdk_api.api;

class PersonPreferences {
  PersonPreferences({
    this.messageEmailEnabled,
    this.messagePushEnabled,
  });

  PersonPreferences.fromJson(Map<String, dynamic> json) {
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

    return other is PersonPreferences &&
        runtimeType == other.runtimeType &&
        messageEmailEnabled == other.messageEmailEnabled &&
        messagePushEnabled == other.messagePushEnabled;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= (messageEmailEnabled?.hashCode ?? 0);
    hashCode ^= (messagePushEnabled?.hashCode ?? 0);

    return hashCode;
  }

  static List<PersonPreferences> listFromJson(List<dynamic> json) {
    return json == null
        ? <PersonPreferences>[]
        : json
            .map((dynamic value) => PersonPreferences.fromJson(value))
            .toList();
  }

  static Map<String, PersonPreferences> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PersonPreferences>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PersonPreferences.fromJson(value));
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
    return 'PersonPreferences[messageEmailEnabled=$messageEmailEnabled, messagePushEnabled=$messagePushEnabled, ]';
  }
}
