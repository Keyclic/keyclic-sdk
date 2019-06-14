part of keyclic_sdk_api.api;

class PersonPatch {
  PersonPatch({
    this.givenName,
    this.familyName,
    this.email,
    this.jobTitle,
    this.image,
    this.optIn,
    this.preferences,
    this.telephone,
  });

  PersonPatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    givenName = json['givenName'];
    familyName = json['familyName'];
    email = json['email'];
    jobTitle = json['jobTitle'];
    image = json['image'];
    optIn = json['optIn'];
    preferences = PersonPatchPreferences.fromJson(json['preferences']);
    telephone = json['telephone'];
  }

  String givenName;

  String familyName;

  String email;

  String jobTitle;

  String image;

  bool optIn;

  PersonPatchPreferences preferences;

  String telephone;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is PersonPatch && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'givenName': givenName,
      'familyName': familyName,
      'email': email,
      'jobTitle': jobTitle,
      'image': image,
      'optIn': optIn,
      'preferences': preferences,
      'telephone': telephone,
    };
  }

  @override
  String toString() {
    return 'PersonPatch[givenName=$givenName, familyName=$familyName, email=$email, jobTitle=$jobTitle, image=$image, optIn=$optIn, preferences=$preferences, telephone=$telephone, ]';
  }

  static List<PersonPatch> listFromJson(List<dynamic> json) {
    return json == null
        ? List<PersonPatch>()
        : json.map((value) => PersonPatch.fromJson(value)).toList();
  }

  static Map<String, PersonPatch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PersonPatch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PersonPatch.fromJson(value));
    }
    return map;
  }
}
