part of keyclic_sdk_api.api;

class Person {
  Person({
    this.links,
    this.agreement,
    this.createdAt,
    this.email,
    this.enabled,
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

  factory Person.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    DateTime createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }

    DateTime updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }

    return Person(
      links: PersonLinks.fromJson(json['_links']),
      agreement: PersonAgreement.fromJson(json['agreement']),
      createdAt: createdAt,
      email: json['email'],
      enabled: json['enabled'],
      familyName: json['familyName'],
      givenName: json['givenName'],
      id: json['id'],
      jobTitle: json['jobTitle'],
      optIn: json['optIn'],
      preferences: PersonPreferences.fromJson(json['preferences']),
      telephone: json['telephone'],
      type: json['type'],
      updatedAt: updatedAt,
      username: json['username'],
    );
  }

  PersonLinks links;

  PersonAgreement agreement;

  DateTime createdAt;

  String email;

  bool enabled;

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
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Person &&
        runtimeType == other.runtimeType &&
        links == other.links &&
        agreement == other.agreement &&
        createdAt == other.createdAt &&
        email == other.email &&
        enabled == other.enabled &&
        familyName == other.familyName &&
        givenName == other.givenName &&
        id == other.id &&
        jobTitle == other.jobTitle &&
        optIn == other.optIn &&
        preferences == other.preferences &&
        telephone == other.telephone &&
        type == other.type &&
        updatedAt == other.updatedAt &&
        username == other.username;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= links?.hashCode ?? 0;
    hashCode ^= agreement?.hashCode ?? 0;
    hashCode ^= createdAt?.hashCode ?? 0;
    hashCode ^= email?.hashCode ?? 0;
    hashCode ^= enabled?.hashCode ?? 0;
    hashCode ^= familyName?.hashCode ?? 0;
    hashCode ^= givenName?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= jobTitle?.hashCode ?? 0;
    hashCode ^= optIn?.hashCode ?? 0;
    hashCode ^= preferences?.hashCode ?? 0;
    hashCode ^= telephone?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= updatedAt?.hashCode ?? 0;
    hashCode ^= username?.hashCode ?? 0;

    return hashCode;
  }

  static List<Person> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => Person.fromJson(value))?.toList() ??
        <Person>[];
  }

  static Map<String, Person> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, Person>((String key, dynamic value) {
          return MapEntry(key, Person.fromJson(value));
        }) ??
        <String, Person>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (links != null) '_links': links.toJson(),
      if (agreement != null) 'agreement': agreement.toJson(),
      if (createdAt != null) 'createdAt': createdAt.toUtc().toIso8601String(),
      if (email != null) 'email': email,
      if (enabled != null) 'enabled': enabled,
      if (familyName != null) 'familyName': familyName,
      if (givenName != null) 'givenName': givenName,
      if (id != null) 'id': id,
      if (jobTitle != null) 'jobTitle': jobTitle,
      if (optIn != null) 'optIn': optIn,
      if (preferences != null) 'preferences': preferences.toJson(),
      if (telephone != null) 'telephone': telephone,
      if (type != null) 'type': type,
      if (updatedAt != null) 'updatedAt': updatedAt.toUtc().toIso8601String(),
      if (username != null) 'username': username,
    };
  }

  @override
  String toString() {
    return 'Person[links=$links, agreement=$agreement, createdAt=$createdAt, email=$email, enabled=$enabled, familyName=$familyName, givenName=$givenName, id=$id, jobTitle=$jobTitle, optIn=$optIn, preferences=$preferences, telephone=$telephone, type=$type, updatedAt=$updatedAt, username=$username, ]';
  }
}
