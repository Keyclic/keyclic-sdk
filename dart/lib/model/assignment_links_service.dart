part of keyclic_sdk_api.api;

class AssignmentLinksService {
  AssignmentLinksService({
    this.href,
    this.iriTemplate,
  });

  factory AssignmentLinksService.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return AssignmentLinksService(
      href: json['href'],
      iriTemplate:
          AssignmentLinksServiceIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the service associated to the given assignment. */
  String href;

  AssignmentLinksServiceIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentLinksService &&
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

  static List<AssignmentLinksService> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => AssignmentLinksService.fromJson(value))
            ?.toList() ??
        <AssignmentLinksService>[];
  }

  static Map<String, AssignmentLinksService> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, AssignmentLinksService>((String key, dynamic value) {
          return MapEntry(key, AssignmentLinksService.fromJson(value));
        }) ??
        <String, AssignmentLinksService>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'AssignmentLinksService[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
