part of keyclic_sdk_api.api;

class AssignmentLinksCreatedByIriTemplateMapping {
  AssignmentLinksCreatedByIriTemplateMapping({
    this.person,
  });

  factory AssignmentLinksCreatedByIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return AssignmentLinksCreatedByIriTemplateMapping(
      person: json['person'],
    );
  }

  String person;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentLinksCreatedByIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        person == other.person;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= person?.hashCode ?? 0;

    return hashCode;
  }

  static List<AssignmentLinksCreatedByIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                AssignmentLinksCreatedByIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <AssignmentLinksCreatedByIriTemplateMapping>[];
  }

  static Map<String, AssignmentLinksCreatedByIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, AssignmentLinksCreatedByIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(
              key, AssignmentLinksCreatedByIriTemplateMapping.fromJson(value));
        }) ??
        <String, AssignmentLinksCreatedByIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (person != null) 'person': person,
    };
  }

  @override
  String toString() {
    return 'AssignmentLinksCreatedByIriTemplateMapping[person=$person, ]';
  }
}
