part of keyclic_sdk_api.api;

class PersonPatch {
  PersonPatch({
    this.agreement,
    this.givenName,
    this.familyName,
    this.email,
    this.jobTitle,
    this.image,
    this.optIn,
    this.preferences,
    this.telephone,
  });

  factory PersonPatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PersonPatch(
      agreement: PersonPatchAgreement.fromJson(json['agreement']),
      givenName: json['givenName'],
      familyName: json['familyName'],
      email: json['email'],
      jobTitle: json['jobTitle'],
      image: json['image'],
      optIn: json['optIn'],
      preferences: PersonPatchPreferences.fromJson(json['preferences']),
      telephone: json['telephone'],
    );
  }

  PersonPatchAgreement agreement;

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
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PersonPatch &&
        runtimeType == other.runtimeType &&
        agreement == other.agreement &&
        givenName == other.givenName &&
        familyName == other.familyName &&
        email == other.email &&
        jobTitle == other.jobTitle &&
        image == other.image &&
        optIn == other.optIn &&
        preferences == other.preferences &&
        telephone == other.telephone;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= agreement?.hashCode ?? 0;
    hashCode ^= givenName?.hashCode ?? 0;
    hashCode ^= familyName?.hashCode ?? 0;
    hashCode ^= email?.hashCode ?? 0;
    hashCode ^= jobTitle?.hashCode ?? 0;
    hashCode ^= image?.hashCode ?? 0;
    hashCode ^= optIn?.hashCode ?? 0;
    hashCode ^= preferences?.hashCode ?? 0;
    hashCode ^= telephone?.hashCode ?? 0;

    return hashCode;
  }

  static List<PersonPatch> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PersonPatch.fromJson(value))
            ?.toList() ??
        <PersonPatch>[];
  }

  static Map<String, PersonPatch> mapFromJson(Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, PersonPatch.fromJson(value));
        }) ??
        <String, PersonPatch>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (agreement != null) 'agreement': agreement.toJson(),
      if (givenName != null) 'givenName': givenName,
      if (familyName != null) 'familyName': familyName,
      if (email != null) 'email': email,
      if (jobTitle != null) 'jobTitle': jobTitle,
      if (image != null) 'image': image,
      if (optIn != null) 'optIn': optIn,
      if (preferences != null) 'preferences': preferences.toJson(),
      if (telephone != null) 'telephone': telephone,
    };
  }

  @override
  String toString() {
    return 'PersonPatch[agreement=$agreement, givenName=$givenName, familyName=$familyName, email=$email, jobTitle=$jobTitle, image=$image, optIn=$optIn, preferences=$preferences, telephone=$telephone, ]';
  }
}
