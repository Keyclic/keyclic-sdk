// @dart=2.10
part of keyclic_sdk_api.api;

class AssignmentLinksServiceIriTemplateMapping {
  AssignmentLinksServiceIriTemplateMapping({
    this.service,
  });

  factory AssignmentLinksServiceIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return AssignmentLinksServiceIriTemplateMapping(
      service: json['service'],
    );
  }

  String service;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentLinksServiceIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        service == other.service;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= service?.hashCode ?? 0;

    return hashCode;
  }

  static List<AssignmentLinksServiceIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                AssignmentLinksServiceIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <AssignmentLinksServiceIriTemplateMapping>[];
  }

  static Map<String, AssignmentLinksServiceIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, AssignmentLinksServiceIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(
              key, AssignmentLinksServiceIriTemplateMapping.fromJson(value));
        }) ??
        <String, AssignmentLinksServiceIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (service != null) 'service': service,
    };
  }

  @override
  String toString() {
    return 'AssignmentLinksServiceIriTemplateMapping[service=$service, ]';
  }
}
