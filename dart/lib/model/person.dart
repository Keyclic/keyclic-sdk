part of keyclic_sdk_api.api;

class Person {
  Person({
    this.links,
    this.createdAt,
    this.email,
    this.familyName,
    this.givenName,
    this.id,
    this.jobTitle,
    this.optIn,
    this.preferences,
    this.telephone,
    this.type,
    this.updatedAt,
    this.username,
  });

  Person.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    links = PersonLinks.fromJson(json['_links']);
    createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }
    email = json['email'];
    familyName = json['familyName'];
    givenName = json['givenName'];
    id = json['id'];
    jobTitle = json['jobTitle'];
    optIn = json['optIn'];
    preferences = PersonPreferences.fromJson(json['preferences']);
    telephone = json['telephone'];
    type = json['type'];
    updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }
    username = json['username'];
  }

  PersonLinks links;

  DateTime createdAt;

  String email;

  String familyName;

  String givenName;

  String id;

  String jobTitle;

  bool optIn;

  PersonPreferences preferences;

  String telephone;

  String type;

  DateTime updatedAt;

  String username;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is Person &&
        runtimeType == other.runtimeType &&
        optIn == other.optIn;
  }

  @override
  int get hashCode => 0 ^ optIn.hashCode;

  Map<String, dynamic> toJson() {
    return {
      '_links': links,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'email': email,
      'familyName': familyName,
      'givenName': givenName,
      'id': id,
      'jobTitle': jobTitle,
      'optIn': optIn,
      'preferences': preferences,
      'telephone': telephone,
      'type': type,
      'updatedAt': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'username': username,
    };
  }

  @override
  String toString() {
    return 'Person[links=$links, createdAt=$createdAt, email=$email, familyName=$familyName, givenName=$givenName, id=$id, jobTitle=$jobTitle, optIn=$optIn, preferences=$preferences, telephone=$telephone, type=$type, updatedAt=$updatedAt, username=$username, ]';
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
