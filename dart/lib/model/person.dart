part of keyclic_sdk_api.api;

class Person {
  Person({
    this.familyName,
    this.givenName,
    this.jobTitle,
    this.optIn,
    this.preferences,
    this.telephone,
    this.id,
    this.username,
    this.email,
    this.createdAt,
    this.updatedAt,
    this.type,
    this.links,
  });

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
    createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }
    updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
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

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is Person &&
        runtimeType == other.runtimeType &&
        optIn == other.optIn &&
        preferences == other.preferences &&
        id == other.id &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode =>
      0 ^
      optIn.hashCode ^
      preferences.hashCode ^
      id.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode;

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
    return json == null
        ? List<Person>()
        : json.map((value) => Person.fromJson(value)).toList();
  }

  static Map<String, Person> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Person>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Person.fromJson(value));
    }
    return map;
  }
}
