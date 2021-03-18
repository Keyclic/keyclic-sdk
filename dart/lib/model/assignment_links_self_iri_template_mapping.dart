part of keyclic_sdk_api.api;

class AssignmentLinksSelfIriTemplateMapping {
  AssignmentLinksSelfIriTemplateMapping({
    this.assignment,
  });

  factory AssignmentLinksSelfIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return AssignmentLinksSelfIriTemplateMapping(
      assignment: json['assignment'],
    );
  }

  String assignment;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentLinksSelfIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        assignment == other.assignment;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= assignment?.hashCode ?? 0;

    return hashCode;
  }

  static List<AssignmentLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                AssignmentLinksSelfIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <AssignmentLinksSelfIriTemplateMapping>[];
  }

  static Map<String, AssignmentLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, AssignmentLinksSelfIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(
              key, AssignmentLinksSelfIriTemplateMapping.fromJson(value));
        }) ??
        <String, AssignmentLinksSelfIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (assignment != null) 'assignment': assignment,
    };
  }

  @override
  String toString() {
    return 'AssignmentLinksSelfIriTemplateMapping[assignment=$assignment, ]';
  }
}
