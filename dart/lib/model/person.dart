part of keyclic_sdk_api.api;

class Person {
  Person();

  Person.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    familyName = json['familyName'];
    givenName = json['givenName'];
    jobTitle = json['jobTitle'];
    optIn = json['optIn'];
    preferences = PersonPreferences.fromJson(json['preferences']);
    telephone = json['telephone'];
    id = json['id'];
    username = json['username'];
    email = json['email'];
    createdAt = json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }
    updatedAt = json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }
    type = json['type'];
    links = PersonLinks.fromJson(json['_links']);
  }

  String familyName;

  String givenName;

  String jobTitle;

  bool optIn;

  PersonPreferences preferences;

  String telephone;

  String id;

  String username;

  String email;

  DateTime createdAt;

  DateTime updatedAt;

  String type;

  PersonLinks links;

  Map<String, dynamic> toJson() {
    return {
      'familyName': familyName,
      'givenName': givenName,
      'jobTitle': jobTitle,
      'optIn': optIn,
      'preferences': preferences,
      'telephone': telephone,
      'id': id,
      'username': username,
      'email': email,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updatedAt': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'type': type,
      '_links': links,
    };
  }

  @override
  String toString() {
    return 'Person[familyName=$familyName, givenName=$givenName, jobTitle=$jobTitle, optIn=$optIn, preferences=$preferences, telephone=$telephone, id=$id, username=$username, email=$email, createdAt=$createdAt, updatedAt=$updatedAt, type=$type, links=$links, ]';
  }

  static List<Person> listFromJson(List<dynamic> json) {
    return json == null ? List<Person>() : json.map((value) => Person.fromJson(value)).toList();
  }

  static Map<String, Person> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Person>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Person.fromJson(value));
    }
    return map;
  }
}
