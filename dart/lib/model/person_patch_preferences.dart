part of keyclic_sdk_api.api;

class PersonPatchPreferences {
  PersonPatchPreferences();

  PersonPatchPreferences.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    messageEmailEnabled = json['messageEmailEnabled'];
    messagePushEnabled = json['messagePushEnabled'];
  }

  bool messageEmailEnabled;

  bool messagePushEnabled;

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

  static List<PersonPatchPreferences> listFromJson(List<dynamic> json) {
    return json == null
        ? List<PersonPatchPreferences>()
        : json.map((value) => PersonPatchPreferences.fromJson(value)).toList();
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
}
