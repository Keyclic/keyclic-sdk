part of keyclic_sdk_api.api;

class PersonPreferences {
  PersonPreferences();

  PersonPreferences.fromJson(Map<String, dynamic> json) {
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
    return 'PersonPreferences[messageEmailEnabled=$messageEmailEnabled, messagePushEnabled=$messagePushEnabled, ]';
  }

  static List<PersonPreferences> listFromJson(List<dynamic> json) {
    return json == null
        ? List<PersonPreferences>()
        : json.map((value) => PersonPreferences.fromJson(value)).toList();
  }

  static Map<String, PersonPreferences> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PersonPreferences>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PersonPreferences.fromJson(value));
    }
    return map;
  }
}
