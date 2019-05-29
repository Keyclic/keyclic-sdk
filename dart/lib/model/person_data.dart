part of keyclic_sdk_api.api;

class PersonData {
  PersonData();

  PersonData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    person = json['person'];
  }

  String person;

  Map<String, dynamic> toJson() {
    return {
      'person': person,
    };
  }

  @override
  String toString() {
    return 'PersonData[person=$person, ]';
  }

  static List<PersonData> listFromJson(List<dynamic> json) {
    return json == null
        ? List<PersonData>()
        : json.map((value) => PersonData.fromJson(value)).toList();
  }

  static Map<String, PersonData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PersonData>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = PersonData.fromJson(value));
    }
    return map;
  }
}
