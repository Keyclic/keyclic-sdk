part of keyclic_sdk_api.api;

class PersonCollection {
  PersonCollection();

  PersonCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    items = Person.listFromJson(json['items']);
  }

  List<Person> items;

  Map<String, dynamic> toJson() {
    return {
      'items': items,
    };
  }

  @override
  String toString() {
    return 'PersonCollection[items=$items, ]';
  }

  static List<PersonCollection> listFromJson(List<dynamic> json) {
    return json == null ? List<PersonCollection>() : json.map((value) => PersonCollection.fromJson(value)).toList();
  }

  static Map<String, PersonCollection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PersonCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PersonCollection.fromJson(value));
    }
    return map;
  }
}
