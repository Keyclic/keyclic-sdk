part of keyclic_sdk_api.api;

class AssignmentLinksCreatedBy {
  AssignmentLinksCreatedBy({
    this.href,
    this.iriTemplate,
  });

  factory AssignmentLinksCreatedBy.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return AssignmentLinksCreatedBy(
      href: json['href'],
      iriTemplate:
          AssignmentLinksCreatedByIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the createdBy associated to the given assignment. */
  String href;

  AssignmentLinksCreatedByIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentLinksCreatedBy &&
        runtimeType == other.runtimeType &&
        href == other.href &&
        iriTemplate == other.iriTemplate;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= href?.hashCode ?? 0;
    hashCode ^= iriTemplate?.hashCode ?? 0;

    return hashCode;
  }

  static List<AssignmentLinksCreatedBy> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => AssignmentLinksCreatedBy.fromJson(value))
            ?.toList() ??
        <AssignmentLinksCreatedBy>[];
  }

  static Map<String, AssignmentLinksCreatedBy> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, AssignmentLinksCreatedBy>(
            (String key, dynamic value) {
          return MapEntry(key, AssignmentLinksCreatedBy.fromJson(value));
        }) ??
        <String, AssignmentLinksCreatedBy>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'AssignmentLinksCreatedBy[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
