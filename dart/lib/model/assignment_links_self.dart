part of keyclic_sdk_api.api;

class AssignmentLinksSelf {
  AssignmentLinksSelf({
    this.href,
    this.iriTemplate,
  });

  factory AssignmentLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return AssignmentLinksSelf(
      href: json['href'],
      iriTemplate: AssignmentLinksSelfIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the self associated to the given assignment. */
  String href;

  AssignmentLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentLinksSelf &&
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

  static List<AssignmentLinksSelf> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => AssignmentLinksSelf.fromJson(value))
            ?.toList() ??
        <AssignmentLinksSelf>[];
  }

  static Map<String, AssignmentLinksSelf> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, AssignmentLinksSelf>((String key, dynamic value) {
          return MapEntry(key, AssignmentLinksSelf.fromJson(value));
        }) ??
        <String, AssignmentLinksSelf>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'AssignmentLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
