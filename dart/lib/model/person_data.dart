part of keyclic_sdk_api.api;

class PersonData {
  PersonData({
    this.person,
  });

  PersonData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    person = json['person'];
  }

  String person;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PersonData &&
        runtimeType == other.runtimeType &&
        person == other.person;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ person.hashCode;

  static List<PersonData> listFromJson(List<dynamic> json) {
    return json == null
        ? <PersonData>[]
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

  Map<String, dynamic> toJson() {
    return {
      'person': person,
    };
  }

  @override
  String toString() {
    return 'PersonData[person=$person, ]';
  }
}
